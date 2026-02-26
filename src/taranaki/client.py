import redis

# singleton
__instance = None


def configure(host="localhost", port=6379, db=0, url=""):
    global __instance
    if url:
        __instance = redis.Redis.from_url(url, protocol=3)
    else:
        __instance = redis.Redis(host=host, port=port, db=db, protocol=3)


def get_instance():
    global __instance
    if not __instance:
        configure()
    return __instance
