using Colors, ColorTypes, FileIO, ManifoldAsymptote, Manifolds, ReferenceTests, Test

# Generate two temp folders for asy source and img
isdir("asy") || mkdir("asy") # for exports
isdir("img") || mkdir("img") # images
isdir("ref") || mkdir("ref") # for references (cached on CI)

col1 = RGBA{Float64}(0.8, 0.0, 0.0, 0.75)
col2 = RGBA{Float64}(0.0, 0.8, 0.0, 0.75)
col3 = RGBA{Float64}(0.0, 0.0, 0.8, 0.75)
@testset "ManifoldsAsymptote.jl" begin
    @testset "asymptote_export_S2_signals" begin
        M1 = Sphere(2)
        p1 = [0.0, 0.0, 1.0]; q1 = [0.0, 1.0, 0.0]
        X1 = [0.2, 0.3, 0.0]
        c1 = shortest_geodesic(M1, p1, q1, range(0, 1, 4))
        asymptote_export_S2_signals(
            "asy/s2signals.asy";
            points = [[p1, q1]], curves = [c1], tangent_vectors = [[(p1, X1)]],
            colors = Dict(:points => [col1], :curves => [col2], :tvectors => [col3])
        )
        content1 = read("asy/s2signals.asy", String)
        @test startswith(content1, "import settings;")
        @test occursin("pen curveStyle1 = ", content1)
        @test occursin("pen pointStyle1 = ", content1)
        @test occursin("pen tVectorStyle1 = ", content1)
        # check against reference
        @test_reference "ref/s2signals.asy" content1
    end
    @testset "asymptote_export_S2_data" begin

    end
    @testset "asymptote_export_SPD" begin

    end
    @testset "render_asymptote" begin
        render_asymptote("asy/s2signals.asy"; export_file = "img/s2signals")
        render_asymptote("asy/s2signals.asy"; export_file = "img/s2signals2", render = nothing)
        @test_reference "ref/s2signals.png" load("img/s2signals.png")
        @test_reference "ref/s2signals2.png" load("img/s2signals2.png")
    end
end
