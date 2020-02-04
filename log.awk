function time() {
    match($0, /^(....)-(..)-(..) (..):(..):(..)[.](...)(.*)/, g)
    milis=g[7]
    return mktime(g[1] " " g[2] " " g[3] " " g[4] " " g[5] " " g[6])*1000+milis
}
/REST request to publish UseCase/ {
    publish=time()
}
/======== Ended publication/{
    print FILENAME " publish: " (time()-publish)/1000
}