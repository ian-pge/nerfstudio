ns-process-data images --data /workspace/mutagen/undistorted --output-dir /workspace/mutagen/undistorted --skip-colmap

ns-train splatfacto-big \                                                                                                    (nerfstudio) 33s539ms
        --data /workspace/mutagen/undistorted \
        --pipeline.model.rasterize-mode antialiased \
        --pipeline.model.camera-optimizer.mode SO3xR3 \
        --pipeline.model.cull-alpha-thresh 0.003 \
        --pipeline.model.use-scale-regularization True \
        --pipeline.model.use-bilateral-grid True \
        --pipeline.datamanager.images-on-gpu True \
        --pipeline.datamanager.cache-images gpu \
        colmap \
        --downscale_factor 1
