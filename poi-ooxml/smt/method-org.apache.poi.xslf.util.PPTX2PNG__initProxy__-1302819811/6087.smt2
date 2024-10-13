(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var815 0)
(declare-sort var2094 0)
(declare-sort var1990 0)
(declare-sort var2045 0)
(declare-sort var2226 0)
(declare-sort var3197 0)
(declare-sort var1214 0)
(declare-sort var1270 0)
(declare-sort var2165 0)
(declare-sort var3830 0)
(declare-sort var2756 0)
(declare-sort var563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var2094) String)
(declare-fun toLowerCase/1946809429 (String var1990) String)
(declare-fun var3197_prepareToCheckMagic/-901623769 (var2045) var2045)
(declare-fun var3197_valueOf/-2014163495 (var2045) var3197)
(declare-fun var1270_bootstrap$/907293299 (var2045) var1214)
(declare-fun ordinal/1898256422 (var3197) Int)
(declare-fun var3830-init () var3830)
(declare-fun <init>/-143878206 (var3830) void)
(declare-fun cast-from-var3830-to-var2756 (var3830) var2756)
(declare-fun ignoreParse/-1346839480 (var815) Bool)
(declare-fun setIgnoreParse/1874140438 (var2756 Bool) void)
(declare-fun quiet/-1346839480 (var815) Bool)
(declare-fun setQuiet/-793872503 (var2756 Bool) void)
(declare-fun var1214_parse/-1783483348 (var1214 var2756) void)
(declare-fun charset/-1346839480 (var815) var563)
(declare-fun setDefaultCharset/-804578634 (var2756 var563) void)
(declare-const null-var815 var815)
(declare-const null-var2094 var2094)
(declare-const var1990-ROOT var1990)
(declare-const var2226-in var2045)
(declare-const var3197-UNKNOWN var3197)
(declare-const var2165-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic (Array Int Int))
(declare-const var555 var815) ; Statement: r8 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var555 null-var815)))
(declare-const var3068 var2094) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3068 null-var2094)))
(assert true)
(define-const var1384 String (getName/1128186653 var3068)) ; Statement: $r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(define-const var2478 var1990 var1990-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3155 String (toLowerCase/1946809429 var1384 var2478)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var392 String "stdin") ; Statement: $r4 = "stdin" 
(assert true)
(define-const var3568 Bool (= var392 var3155)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0) 
(assert (not (= (ite var3568 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1499 var2045 var2226-in) ; Statement: $r11 = <java.lang.System: java.io.InputStream in> 
(define-const var2970 var2045 (var3197_prepareToCheckMagic/-901623769 var1499)) ; Statement: r12 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: java.io.InputStream prepareToCheckMagic(java.io.InputStream)>($r11) 
(define-const var161 var3197 (var3197_valueOf/-2014163495 var2970)) ; Statement: r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.InputStream)>(r12) 
(define-const var2495 var1214 (var1270_bootstrap$/907293299 var2970)) ; Statement: r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.InputStream)>(r12) 
 ; Statement: goto [?= $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>] 
(assert true) ; Non Conditional
(define-const var2768 var3197 var3197-UNKNOWN) ; Statement: $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN> 
 ; Statement: if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert (not (= var161 var2768))) ; Cond: r13 != $r5 
(define-const var3079 (Array Int Int) var2165-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic) ; Statement: $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert true)
(define-const var2889 Int (ordinal/1898256422 var161)) ; Statement: $i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>() 
(define-const var566 Int (select var3079 var2889)) ; Statement: $i1 = $r6[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; } 
(assert (and (= var566 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(define-const var1748 var3830 var3830-init) ; Statement: $r9 = new org.apache.poi.xslf.util.EMFHandler 
(assert true)
;(assert (<init>/-143878206 var1748)) ; Statement: specialinvoke $r9.<org.apache.poi.xslf.util.EMFHandler: void <init>()>() 

(declare-const var1748!1 var3830)
(define-const var1013 var2756 (cast-from-var3830-to-var2756 var1748!1)) ; Statement: r15 = $r9 
 ; Statement: goto [?= $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>] 
(assert true) ; Non Conditional
(define-const var2287 Bool (ignoreParse/-1346839480 var555)) ; Statement: $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse> 
(assert true)
;(assert (setIgnoreParse/1874140438 var1013 var2287)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1) 

(declare-const var1013!1 var2756)
(declare-const var2287!1 Bool)
(define-const var3902 Bool (quiet/-1346839480 var555)) ; Statement: $z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet> 
(assert true)
;(assert (setQuiet/-793872503 var1013!1 var3902)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2) 

(declare-const var1013!2 var2756)
(declare-const var3902!1 Bool)
;(assert (var1214_parse/-1783483348 var2495 var1013!2)) ; Statement: interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15) 

(declare-const var2495!1 var1214)
(declare-const var1013!3 var2756)
(define-const var490 var563 (charset/-1346839480 var555)) ; Statement: $r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset> 
(assert true)
;(assert (setDefaultCharset/-804578634 var1013!3 var490)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16) 

(declare-const var1013!4 var2756)
(declare-const var490!1 var563)
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3197_prepareToCheckMagic/-901623769=([java.io.InputStream], java.io.InputStream), var3197_valueOf/-2014163495=([java.io.InputStream], org.apache.poi.poifs.filesystem.FileMagic), var1270_bootstrap$/907293299=([java.io.InputStream], org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer), ordinal/1898256422=([org.apache.poi.poifs.filesystem.FileMagic], int), var3830-init=([], org.apache.poi.xslf.util.EMFHandler), <init>/-143878206=([org.apache.poi.xslf.util.EMFHandler], void), cast-from-var3830-to-var2756=([org.apache.poi.xslf.util.EMFHandler], org.apache.poi.xslf.util.MFProxy), ignoreParse/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setIgnoreParse/1874140438=([org.apache.poi.xslf.util.MFProxy, boolean], void), quiet/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setQuiet/-793872503=([org.apache.poi.xslf.util.MFProxy, boolean], void), var1214_parse/-1783483348=([org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, org.apache.poi.xslf.util.MFProxy], void), charset/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.nio.charset.Charset), setDefaultCharset/-804578634=([org.apache.poi.xslf.util.MFProxy, java.nio.charset.Charset], void)}
; {var815=org.apache.poi.xslf.util.PPTX2PNG, var555=r8, var2094=java.io.File, var3068=r0, var1384=$r2, var1990=java.util.Locale, var2478=$r1, var3155=r3, var392=$r4, var3568=$z0, var2045=java.io.InputStream, var2226=java.lang.System, var1499=$r11, var3197=org.apache.poi.poifs.filesystem.FileMagic, var2970=r12, var161=r13, var1214=org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, var1270=org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479, var2495=r14, var2768=$r5, var2165=org.apache.poi.xslf.util.PPTX2PNG$2, var3079=$r6, var2889=$i0, var566=$i1, var3830=org.apache.poi.xslf.util.EMFHandler, var1748=$r9, var2756=org.apache.poi.xslf.util.MFProxy, var1013=r15, var2287=$z1, var3902=$z2, var563=java.nio.charset.Charset, var490=$r16}
; {org.apache.poi.xslf.util.PPTX2PNG=var815, r8=var555, java.io.File=var2094, r0=var3068, $r2=var1384, java.util.Locale=var1990, $r1=var2478, r3=var3155, $r4=var392, $z0=var3568, java.io.InputStream=var2045, java.lang.System=var2226, $r11=var1499, org.apache.poi.poifs.filesystem.FileMagic=var3197, r12=var2970, r13=var161, org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer=var1214, org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479=var1270, r14=var2495, $r5=var2768, org.apache.poi.xslf.util.PPTX2PNG$2=var2165, $r6=var3079, $i0=var2889, $i1=var566, org.apache.poi.xslf.util.EMFHandler=var3830, $r9=var1748, org.apache.poi.xslf.util.MFProxy=var2756, r15=var1013, $z1=var2287, $z2=var3902, java.nio.charset.Charset=var563, $r16=var490}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: java.io.File;	$r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = "stdin";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0);	$r11 = <java.lang.System: java.io.InputStream in>;	r12 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: java.io.InputStream prepareToCheckMagic(java.io.InputStream)>($r11);	r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.InputStream)>(r12);	r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.InputStream)>(r12);	goto [?= $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>];	$r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>;	if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>();	$i1 = $r6[$i0];	lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; };	$r9 = new org.apache.poi.xslf.util.EMFHandler;	specialinvoke $r9.<org.apache.poi.xslf.util.EMFHandler: void <init>()>();	r15 = $r9;	goto [?= $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>];	$z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1);	$z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2);	interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15);	$r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16);	return r15
;block_num 6