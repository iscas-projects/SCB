(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var360 0)
(declare-sort var1081 0)
(declare-sort var2579 0)
(declare-sort var1335 0)
(declare-sort var3732 0)
(declare-sort var2284 0)
(declare-sort var591 0)
(declare-sort var3063 0)
(declare-sort var1007 0)
(declare-sort var2431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var1081) String)
(declare-fun toLowerCase/1946809429 (String var2579) String)
(declare-fun var1335_valueOf/-1988079177 (var1081) var1335)
(declare-fun var2284_bootstrap$/90362945 (var1081) var3732)
(declare-fun ordinal/1898256422 (var1335) Int)
(declare-fun var3063-init () var3063)
(declare-fun <init>/414478320 (var3063) void)
(declare-fun cast-from-var3063-to-var1007 (var3063) var1007)
(declare-fun ignoreParse/-1346839480 (var360) Bool)
(declare-fun setIgnoreParse/1874140438 (var1007 Bool) void)
(declare-fun quiet/-1346839480 (var360) Bool)
(declare-fun setQuiet/-793872503 (var1007 Bool) void)
(declare-fun var3732_parse/-1783483348 (var3732 var1007) void)
(declare-fun charset/-1346839480 (var360) var2431)
(declare-fun setDefaultCharset/-804578634 (var1007 var2431) void)
(declare-const null-var360 var360)
(declare-const null-var1081 var1081)
(declare-const var2579-ROOT var2579)
(declare-const var1335-UNKNOWN var1335)
(declare-const var591-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic (Array Int Int))
(declare-const var147 var360) ; Statement: r8 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var147 null-var360)))
(declare-const var1196 var1081) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1196 null-var1081)))
(assert true)
(define-const var2608 String (getName/1128186653 var1196)) ; Statement: $r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(define-const var1948 var2579 var2579-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var48 String (toLowerCase/1946809429 var2608 var1948)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var3320 String "stdin") ; Statement: $r4 = "stdin" 
(assert true)
(define-const var3539 Bool (= var3320 var48)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0) 
(assert (= (ite var3539 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1292 var1335 (var1335_valueOf/-1988079177 var1196)) ; Statement: r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0) 
(define-const var1065 var3732 (var2284_bootstrap$/90362945 var1196)) ; Statement: r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.File)>(r0) 
(assert true) ; Non Conditional
(define-const var3467 var1335 var1335-UNKNOWN) ; Statement: $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN> 
 ; Statement: if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert (not (= var1292 var3467))) ; Cond: r13 != $r5 
(define-const var855 (Array Int Int) var591-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic) ; Statement: $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert true)
(define-const var990 Int (ordinal/1898256422 var1292)) ; Statement: $i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>() 
(define-const var570 Int (select var855 var990)) ; Statement: $i1 = $r6[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; } 
(assert (and (= var570 2) (and (not (= var570 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var3128 var3063 var3063-init) ; Statement: $r7 = new org.apache.poi.xslf.util.WMFHandler 
(assert true)
;(assert (<init>/414478320 var3128)) ; Statement: specialinvoke $r7.<org.apache.poi.xslf.util.WMFHandler: void <init>()>() 

(declare-const var3128!1 var3063)
(define-const var3679 var1007 (cast-from-var3063-to-var1007 var3128!1)) ; Statement: r15 = $r7 
 ; Statement: goto [?= $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>] 
(assert true) ; Non Conditional
(define-const var2099 Bool (ignoreParse/-1346839480 var147)) ; Statement: $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse> 
(assert true)
;(assert (setIgnoreParse/1874140438 var3679 var2099)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1) 

(declare-const var3679!1 var1007)
(declare-const var2099!1 Bool)
(define-const var2350 Bool (quiet/-1346839480 var147)) ; Statement: $z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet> 
(assert true)
;(assert (setQuiet/-793872503 var3679!1 var2350)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2) 

(declare-const var3679!2 var1007)
(declare-const var2350!1 Bool)
;(assert (var3732_parse/-1783483348 var1065 var3679!2)) ; Statement: interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15) 

(declare-const var1065!1 var3732)
(declare-const var3679!3 var1007)
(define-const var554 var2431 (charset/-1346839480 var147)) ; Statement: $r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset> 
(assert true)
;(assert (setDefaultCharset/-804578634 var3679!3 var554)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16) 

(declare-const var3679!4 var1007)
(declare-const var554!1 var2431)
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1335_valueOf/-1988079177=([java.io.File], org.apache.poi.poifs.filesystem.FileMagic), var2284_bootstrap$/90362945=([java.io.File], org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer), ordinal/1898256422=([org.apache.poi.poifs.filesystem.FileMagic], int), var3063-init=([], org.apache.poi.xslf.util.WMFHandler), <init>/414478320=([org.apache.poi.xslf.util.WMFHandler], void), cast-from-var3063-to-var1007=([org.apache.poi.xslf.util.WMFHandler], org.apache.poi.xslf.util.MFProxy), ignoreParse/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setIgnoreParse/1874140438=([org.apache.poi.xslf.util.MFProxy, boolean], void), quiet/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setQuiet/-793872503=([org.apache.poi.xslf.util.MFProxy, boolean], void), var3732_parse/-1783483348=([org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, org.apache.poi.xslf.util.MFProxy], void), charset/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.nio.charset.Charset), setDefaultCharset/-804578634=([org.apache.poi.xslf.util.MFProxy, java.nio.charset.Charset], void)}
; {var360=org.apache.poi.xslf.util.PPTX2PNG, var147=r8, var1081=java.io.File, var1196=r0, var2608=$r2, var2579=java.util.Locale, var1948=$r1, var48=r3, var3320=$r4, var3539=$z0, var1335=org.apache.poi.poifs.filesystem.FileMagic, var1292=r13, var3732=org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, var2284=org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476, var1065=r14, var3467=$r5, var591=org.apache.poi.xslf.util.PPTX2PNG$2, var855=$r6, var990=$i0, var570=$i1, var3063=org.apache.poi.xslf.util.WMFHandler, var3128=$r7, var1007=org.apache.poi.xslf.util.MFProxy, var3679=r15, var2099=$z1, var2350=$z2, var2431=java.nio.charset.Charset, var554=$r16}
; {org.apache.poi.xslf.util.PPTX2PNG=var360, r8=var147, java.io.File=var1081, r0=var1196, $r2=var2608, java.util.Locale=var2579, $r1=var1948, r3=var48, $r4=var3320, $z0=var3539, org.apache.poi.poifs.filesystem.FileMagic=var1335, r13=var1292, org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer=var3732, org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476=var2284, r14=var1065, $r5=var3467, org.apache.poi.xslf.util.PPTX2PNG$2=var591, $r6=var855, $i0=var990, $i1=var570, org.apache.poi.xslf.util.WMFHandler=var3063, $r7=var3128, org.apache.poi.xslf.util.MFProxy=var1007, r15=var3679, $z1=var2099, $z2=var2350, java.nio.charset.Charset=var2431, $r16=var554}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: java.io.File;	$r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = "stdin";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0);	r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0);	r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.File)>(r0);	$r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>;	if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>();	$i1 = $r6[$i0];	lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; };	$r7 = new org.apache.poi.xslf.util.WMFHandler;	specialinvoke $r7.<org.apache.poi.xslf.util.WMFHandler: void <init>()>();	r15 = $r7;	goto [?= $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>];	$z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1);	$z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2);	interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15);	$r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16);	return r15
;block_num 6