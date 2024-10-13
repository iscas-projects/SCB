(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var861 0)
(declare-sort var2463 0)
(declare-sort var222 0)
(declare-sort var1882 0)
(declare-sort var781 0)
(declare-sort var2001 0)
(declare-sort var3227 0)
(declare-sort var652 0)
(declare-sort var1519 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var2463) String)
(declare-fun toLowerCase/1946809429 (String var222) String)
(declare-fun var1882_valueOf/-1988079177 (var2463) var1882)
(declare-fun var2001_bootstrap$/90362945 (var2463) var781)
(declare-fun ordinal/1898256422 (var1882) Int)
(declare-fun var652-init () var652)
(declare-fun <init>/-143878206 (var652) void)
(declare-fun cast-from-var652-to-var1519 (var652) var1519)
(declare-fun ignoreParse/-1346839480 (var861) Bool)
(declare-fun setIgnoreParse/1874140438 (var1519 Bool) void)
(declare-fun quiet/-1346839480 (var861) Bool)
(declare-fun setQuiet/-793872503 (var1519 Bool) void)
(declare-fun var781_parse/-1783483348 (var781 var1519) void)
(declare-fun charset/-1346839480 (var861) var1783)
(declare-fun setDefaultCharset/-804578634 (var1519 var1783) void)
(declare-const null-var861 var861)
(declare-const null-var2463 var2463)
(declare-const var222-ROOT var222)
(declare-const var1882-UNKNOWN var1882)
(declare-const var3227-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic (Array Int Int))
(declare-const var2079 var861) ; Statement: r8 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var2079 null-var861)))
(declare-const var3755 var2463) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3755 null-var2463)))
(assert true)
(define-const var3688 String (getName/1128186653 var3755)) ; Statement: $r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(define-const var468 var222 var222-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2269 String (toLowerCase/1946809429 var3688 var468)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var2627 String "stdin") ; Statement: $r4 = "stdin" 
(assert true)
(define-const var2340 Bool (= var2627 var2269)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0) 
(assert (= (ite var2340 1 0) 0)) ; Cond: $z0 == 0 
(define-const var146 var1882 (var1882_valueOf/-1988079177 var3755)) ; Statement: r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0) 
(define-const var1201 var781 (var2001_bootstrap$/90362945 var3755)) ; Statement: r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.File)>(r0) 
(assert true) ; Non Conditional
(define-const var3359 var1882 var1882-UNKNOWN) ; Statement: $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN> 
 ; Statement: if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert (not (= var146 var3359))) ; Cond: r13 != $r5 
(define-const var1814 (Array Int Int) var3227-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic) ; Statement: $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert true)
(define-const var1522 Int (ordinal/1898256422 var146)) ; Statement: $i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>() 
(define-const var3034 Int (select var1814 var1522)) ; Statement: $i1 = $r6[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; } 
(assert (and (= var3034 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(define-const var2707 var652 var652-init) ; Statement: $r9 = new org.apache.poi.xslf.util.EMFHandler 
(assert true)
;(assert (<init>/-143878206 var2707)) ; Statement: specialinvoke $r9.<org.apache.poi.xslf.util.EMFHandler: void <init>()>() 

(declare-const var2707!1 var652)
(define-const var798 var1519 (cast-from-var652-to-var1519 var2707!1)) ; Statement: r15 = $r9 
 ; Statement: goto [?= $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>] 
(assert true) ; Non Conditional
(define-const var2220 Bool (ignoreParse/-1346839480 var2079)) ; Statement: $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse> 
(assert true)
;(assert (setIgnoreParse/1874140438 var798 var2220)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1) 

(declare-const var798!1 var1519)
(declare-const var2220!1 Bool)
(define-const var977 Bool (quiet/-1346839480 var2079)) ; Statement: $z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet> 
(assert true)
;(assert (setQuiet/-793872503 var798!1 var977)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2) 

(declare-const var798!2 var1519)
(declare-const var977!1 Bool)
;(assert (var781_parse/-1783483348 var1201 var798!2)) ; Statement: interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15) 

(declare-const var1201!1 var781)
(declare-const var798!3 var1519)
(define-const var943 var1783 (charset/-1346839480 var2079)) ; Statement: $r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset> 
(assert true)
;(assert (setDefaultCharset/-804578634 var798!3 var943)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16) 

(declare-const var798!4 var1519)
(declare-const var943!1 var1783)
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1882_valueOf/-1988079177=([java.io.File], org.apache.poi.poifs.filesystem.FileMagic), var2001_bootstrap$/90362945=([java.io.File], org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer), ordinal/1898256422=([org.apache.poi.poifs.filesystem.FileMagic], int), var652-init=([], org.apache.poi.xslf.util.EMFHandler), <init>/-143878206=([org.apache.poi.xslf.util.EMFHandler], void), cast-from-var652-to-var1519=([org.apache.poi.xslf.util.EMFHandler], org.apache.poi.xslf.util.MFProxy), ignoreParse/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setIgnoreParse/1874140438=([org.apache.poi.xslf.util.MFProxy, boolean], void), quiet/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setQuiet/-793872503=([org.apache.poi.xslf.util.MFProxy, boolean], void), var781_parse/-1783483348=([org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, org.apache.poi.xslf.util.MFProxy], void), charset/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.nio.charset.Charset), setDefaultCharset/-804578634=([org.apache.poi.xslf.util.MFProxy, java.nio.charset.Charset], void)}
; {var861=org.apache.poi.xslf.util.PPTX2PNG, var2079=r8, var2463=java.io.File, var3755=r0, var3688=$r2, var222=java.util.Locale, var468=$r1, var2269=r3, var2627=$r4, var2340=$z0, var1882=org.apache.poi.poifs.filesystem.FileMagic, var146=r13, var781=org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, var2001=org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476, var1201=r14, var3359=$r5, var3227=org.apache.poi.xslf.util.PPTX2PNG$2, var1814=$r6, var1522=$i0, var3034=$i1, var652=org.apache.poi.xslf.util.EMFHandler, var2707=$r9, var1519=org.apache.poi.xslf.util.MFProxy, var798=r15, var2220=$z1, var977=$z2, var1783=java.nio.charset.Charset, var943=$r16}
; {org.apache.poi.xslf.util.PPTX2PNG=var861, r8=var2079, java.io.File=var2463, r0=var3755, $r2=var3688, java.util.Locale=var222, $r1=var468, r3=var2269, $r4=var2627, $z0=var2340, org.apache.poi.poifs.filesystem.FileMagic=var1882, r13=var146, org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer=var781, org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476=var2001, r14=var1201, $r5=var3359, org.apache.poi.xslf.util.PPTX2PNG$2=var3227, $r6=var1814, $i0=var1522, $i1=var3034, org.apache.poi.xslf.util.EMFHandler=var652, $r9=var2707, org.apache.poi.xslf.util.MFProxy=var1519, r15=var798, $z1=var2220, $z2=var977, java.nio.charset.Charset=var1783, $r16=var943}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: java.io.File;	$r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = "stdin";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0);	r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0);	r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.File)>(r0);	$r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>;	if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>();	$i1 = $r6[$i0];	lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; };	$r9 = new org.apache.poi.xslf.util.EMFHandler;	specialinvoke $r9.<org.apache.poi.xslf.util.EMFHandler: void <init>()>();	r15 = $r9;	goto [?= $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>];	$z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1);	$z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2);	interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15);	$r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16);	return r15
;block_num 6