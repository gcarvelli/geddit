module FrontpageHelper

    def get_ad
        ad_images[rand(ad_images.length)]
    end     

    def ad_images
        [
            'http://i1.cpcache.com/product_zoom/776763884/cute_cartoon_monkey_picture_frame.jpg?height=250&width=250&padToSquare=true',
            'http://cg3dmodels.com/wp-content/uploads/2012/05/optimus-prime-transformer-3d-model-250x250.jpg'
        ]
    end
end
