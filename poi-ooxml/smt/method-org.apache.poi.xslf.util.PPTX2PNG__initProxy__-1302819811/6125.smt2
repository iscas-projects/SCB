(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2657 0)
(declare-sort var680 0)
(declare-sort var1123 0)
(declare-sort var3381 0)
(declare-sort var81 0)
(declare-sort var2337 0)
(declare-sort var3815 0)
(declare-sort var1284 0)
(declare-sort var3830 0)
(declare-sort var2849 0)
(declare-sort var2805 0)
(declare-sort var1453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var680) String)
(declare-fun toLowerCase/1946809429 (String var1123) String)
(declare-fun var2337_prepareToCheckMagic/-901623769 (var3381) var3381)
(declare-fun var2337_valueOf/-2014163495 (var3381) var2337)
(declare-fun var1284_bootstrap$/907293299 (var3381) var3815)
(declare-fun ordinal/1898256422 (var2337) Int)
(declare-fun var2849-init () var2849)
(declare-fun <init>/1617551692 (var2849) void)
(declare-fun cast-from-var2849-to-var2805 (var2849) var2805)
(declare-fun ignoreParse/-1346839480 (var2657) Bool)
(declare-fun setIgnoreParse/1874140438 (var2805 Bool) void)
(declare-fun quiet/-1346839480 (var2657) Bool)
(declare-fun setQuiet/-793872503 (var2805 Bool) void)
(declare-fun var3815_parse/-1783483348 (var3815 var2805) void)
(declare-fun charset/-1346839480 (var2657) var1453)
(declare-fun setDefaultCharset/-804578634 (var2805 var1453) void)
(declare-const null-var2657 var2657)
(declare-const null-var680 var680)
(declare-const var1123-ROOT var1123)
(declare-const var81-in var3381)
(declare-const var2337-UNKNOWN var2337)
(declare-const var3830-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic (Array Int Int))
(declare-const var1559 var2657) ; Statement: r8 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var1559 null-var2657)))
(declare-const var647 var680) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var647 null-var680)))
(assert true)
(define-const var3758 String (getName/1128186653 var647)) ; Statement: $r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(define-const var3706 var1123 var1123-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2498 String (toLowerCase/1946809429 var3758 var3706)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var3882 String "stdin") ; Statement: $r4 = "stdin" 
(assert true)
(define-const var1923 Bool (= var3882 var2498)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0) 
(assert (not (= (ite var1923 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var988 var3381 var81-in) ; Statement: $r11 = <java.lang.System: java.io.InputStream in> 
(define-const var3848 var3381 (var2337_prepareToCheckMagic/-901623769 var988)) ; Statement: r12 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: java.io.InputStream prepareToCheckMagic(java.io.InputStream)>($r11) 
(define-const var3558 var2337 (var2337_valueOf/-2014163495 var3848)) ; Statement: r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.InputStream)>(r12) 
(define-const var1591 var3815 (var1284_bootstrap$/907293299 var3848)) ; Statement: r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.InputStream)>(r12) 
 ; Statement: goto [?= $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>] 
(assert true) ; Non Conditional
(define-const var3969 var2337 var2337-UNKNOWN) ; Statement: $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN> 
 ; Statement: if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert (not (= var3558 var3969))) ; Cond: r13 != $r5 
(define-const var68 (Array Int Int) var3830-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic) ; Statement: $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert true)
(define-const var789 Int (ordinal/1898256422 var3558)) ; Statement: $i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>() 
(define-const var3637 Int (select var68 var789)) ; Statement: $i1 = $r6[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; } 
(assert (and (not (= var3637 2)) (and (not (= var3637 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var3161 var2849 var2849-init) ; Statement: $r10 = new org.apache.poi.xslf.util.PPTHandler 
(assert true)
;(assert (<init>/1617551692 var3161)) ; Statement: specialinvoke $r10.<org.apache.poi.xslf.util.PPTHandler: void <init>()>() 

(declare-const var3161!1 var2849)
(define-const var3582 var2805 (cast-from-var2849-to-var2805 var3161!1)) ; Statement: r15 = $r10 
(assert true) ; Non Conditional
(define-const var2366 Bool (ignoreParse/-1346839480 var1559)) ; Statement: $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse> 
(assert true)
;(assert (setIgnoreParse/1874140438 var3582 var2366)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1) 

(declare-const var3582!1 var2805)
(declare-const var2366!1 Bool)
(define-const var353 Bool (quiet/-1346839480 var1559)) ; Statement: $z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet> 
(assert true)
;(assert (setQuiet/-793872503 var3582!1 var353)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2) 

(declare-const var3582!2 var2805)
(declare-const var353!1 Bool)
;(assert (var3815_parse/-1783483348 var1591 var3582!2)) ; Statement: interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15) 

(declare-const var1591!1 var3815)
(declare-const var3582!3 var2805)
(define-const var2933 var1453 (charset/-1346839480 var1559)) ; Statement: $r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset> 
(assert true)
;(assert (setDefaultCharset/-804578634 var3582!3 var2933)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16) 

(declare-const var3582!4 var2805)
(declare-const var2933!1 var1453)
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var2337_prepareToCheckMagic/-901623769=([java.io.InputStream], java.io.InputStream), var2337_valueOf/-2014163495=([java.io.InputStream], org.apache.poi.poifs.filesystem.FileMagic), var1284_bootstrap$/907293299=([java.io.InputStream], org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer), ordinal/1898256422=([org.apache.poi.poifs.filesystem.FileMagic], int), var2849-init=([], org.apache.poi.xslf.util.PPTHandler), <init>/1617551692=([org.apache.poi.xslf.util.PPTHandler], void), cast-from-var2849-to-var2805=([org.apache.poi.xslf.util.PPTHandler], org.apache.poi.xslf.util.MFProxy), ignoreParse/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setIgnoreParse/1874140438=([org.apache.poi.xslf.util.MFProxy, boolean], void), quiet/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setQuiet/-793872503=([org.apache.poi.xslf.util.MFProxy, boolean], void), var3815_parse/-1783483348=([org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, org.apache.poi.xslf.util.MFProxy], void), charset/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.nio.charset.Charset), setDefaultCharset/-804578634=([org.apache.poi.xslf.util.MFProxy, java.nio.charset.Charset], void)}
; {var2657=org.apache.poi.xslf.util.PPTX2PNG, var1559=r8, var680=java.io.File, var647=r0, var3758=$r2, var1123=java.util.Locale, var3706=$r1, var2498=r3, var3882=$r4, var1923=$z0, var3381=java.io.InputStream, var81=java.lang.System, var988=$r11, var2337=org.apache.poi.poifs.filesystem.FileMagic, var3848=r12, var3558=r13, var3815=org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, var1284=org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479, var1591=r14, var3969=$r5, var3830=org.apache.poi.xslf.util.PPTX2PNG$2, var68=$r6, var789=$i0, var3637=$i1, var2849=org.apache.poi.xslf.util.PPTHandler, var3161=$r10, var2805=org.apache.poi.xslf.util.MFProxy, var3582=r15, var2366=$z1, var353=$z2, var1453=java.nio.charset.Charset, var2933=$r16}
; {org.apache.poi.xslf.util.PPTX2PNG=var2657, r8=var1559, java.io.File=var680, r0=var647, $r2=var3758, java.util.Locale=var1123, $r1=var3706, r3=var2498, $r4=var3882, $z0=var1923, java.io.InputStream=var3381, java.lang.System=var81, $r11=var988, org.apache.poi.poifs.filesystem.FileMagic=var2337, r12=var3848, r13=var3558, org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer=var3815, org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479=var1284, r14=var1591, $r5=var3969, org.apache.poi.xslf.util.PPTX2PNG$2=var3830, $r6=var68, $i0=var789, $i1=var3637, org.apache.poi.xslf.util.PPTHandler=var2849, $r10=var3161, org.apache.poi.xslf.util.MFProxy=var2805, r15=var3582, $z1=var2366, $z2=var353, java.nio.charset.Charset=var1453, $r16=var2933}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: java.io.File;	$r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = "stdin";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0);	$r11 = <java.lang.System: java.io.InputStream in>;	r12 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: java.io.InputStream prepareToCheckMagic(java.io.InputStream)>($r11);	r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.InputStream)>(r12);	r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.InputStream)>(r12);	goto [?= $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>];	$r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>;	if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>();	$i1 = $r6[$i0];	lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; };	$r10 = new org.apache.poi.xslf.util.PPTHandler;	specialinvoke $r10.<org.apache.poi.xslf.util.PPTHandler: void <init>()>();	r15 = $r10;	$z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1);	$z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2);	interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15);	$r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16);	return r15
;block_num 6