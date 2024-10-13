(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var757 0)
(declare-sort var3942 0)
(declare-sort var2291 0)
(declare-sort var3732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun getBytes/-163691139 (String var3942) (Array Int Int))
(declare-fun var3732_decode/1570173944 ((Array Int Int) Bool) (Array Int Int))
(declare-fun <init>/-2015205558 (String (Array Int Int) var3942) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3942 var3942)
(declare-const null-Bool Bool)
(declare-const var2291-CHARSET_ISO_8859_1 var3942)
(declare-const var2113 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2113 null-String)))
(declare-const var2839 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2839 null-Int)))
(declare-const var1000 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1000 null-Int)))
(declare-const var1348 var3942) ; Statement: r5 := @parameter3: java.nio.charset.Charset 
(assert (not (= var1348 null-var3942)))
(declare-const var3238 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var3238 null-Bool)))
(define-const var2442 String String-init) ; Statement: $r0 = new java.lang.String 
(assert (not (and true (and (>= var2839 0) (>= (str.len var2113) var1000) (>= var1000 var2839)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var3732_decode/1570173944=([byte[], boolean], byte[]), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var2113=r1, var757=null_type, var2839=i0, var1000=i1, var3942=java.nio.charset.Charset, var1348=r5, var3238=z0, var2442=$r0, var668=$r3, var2291=cn.hutool.core.util.CharsetUtil, var2645=$r2, var3514=$r4, var3732=cn.hutool.core.net.URLDecoder, var486=$r6}
; {r1=var2113, null_type=var757, i0=var2839, i1=var1000, java.nio.charset.Charset=var3942, r5=var1348, z0=var3238, $r0=var2442, $r3=var668, cn.hutool.core.util.CharsetUtil=var2291, $r2=var2645, $r4=var3514, cn.hutool.core.net.URLDecoder=var3732, $r6=var486}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>;	<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1,"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r5 := @parameter3: java.nio.charset.Charset;	z0 := @parameter4: boolean;	$r0 = new java.lang.String;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	$r2 = <cn.hutool.core.util.CharsetUtil: java.nio.charset.Charset CHARSET_ISO_8859_1>;	$r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r2);	$r6 = staticinvoke <cn.hutool.core.net.URLDecoder: byte[] decode(byte[],boolean)>($r4, z0);	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r6, r5);	return $r0
;block_num 1