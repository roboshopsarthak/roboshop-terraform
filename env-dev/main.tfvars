env = "dev"
domain_name = "sarthak1207.shop"
zone_id = "Z00485513VTKYH807UIM0"

db_instances = {
    mongodb    = {
        app_port    =   27017
        instance_type   =   "t2.micro"
        volume_size = 20

    }

    rabbitmq    = {
        app_port    =   5672
        instance_type   =   "t2.micro"
        volume_size = 20
    }

    redis    = {
        app_port    =   6379
        instance_type   =   "t2.micro"
        volume_size = 20
    }    

    mysql    = {
        app_port    =   3306
        instance_type   =   "t2.micro"
        volume_size = 20
    }  
}

app_instances   = {
    catalogue    = {
        app_port    =   8080
        instance_type   =   "t2.micro"
        volume_size = 32
    }

    cart    = {
        app_port    =   8080
        instance_type   =   "t2.micro"
        volume_size = 20
    }

    user    = {
        app_port    =   8080
        instance_type   =   "t2.micro"
        volume_size = 20
    }

    payment    = {
        app_port    =   8080
        instance_type   =   "t2.micro"
        volume_size = 20
    }   

    shipping    = {
        app_port    =   8080
        instance_type   =   "t2.micro"
        volume_size = 20
    }   
}


web_instances = {
    frontend    = {
        app_port    =   80
        instance_type   =   "t2.micro"
        volume_size = 20
    }
}

eks = {
    subnet_ids = [
        "subnet-0933eff18629cdeea",
        "subnet-0446761dba9f2668f"
    ]
    addons = {
        vpc-cni = {}
        kube-proxy = {} 
        core-dns ={}
}
}