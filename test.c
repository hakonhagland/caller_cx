void test_c() {

    const PERL_CONTEXT *cx = caller_cx(0, NULL);
    //PL_curcop = cx->cx_u.cx_blk.blku_oldcop;
    char *pack_name = HvNAME((HV*)CopSTASH(cx->blk_oldcop));

    printf( "[From C]: caller's package name is: %s\n", pack_name );
}
