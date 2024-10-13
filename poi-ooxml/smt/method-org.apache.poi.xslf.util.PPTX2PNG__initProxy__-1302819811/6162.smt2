(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2741 0)
(declare-sort var3368 0)
(declare-sort var1345 0)
(declare-sort var1757 0)
(declare-sort var3357 0)
(declare-sort var2691 0)
(declare-sort var3044 0)
(declare-sort var1730 0)
(declare-sort var1647 0)
(declare-sort var3670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var3368) String)
(declare-fun toLowerCase/1946809429 (String var1345) String)
(declare-fun var1757_valueOf/-1988079177 (var3368) var1757)
(declare-fun var2691_bootstrap$/90362945 (var3368) var3357)
(declare-fun ordinal/1898256422 (var1757) Int)
(declare-fun var1730-init () var1730)
(declare-fun <init>/1617551692 (var1730) void)
(declare-fun cast-from-var1730-to-var1647 (var1730) var1647)
(declare-fun ignoreParse/-1346839480 (var2741) Bool)
(declare-fun setIgnoreParse/1874140438 (var1647 Bool) void)
(declare-fun quiet/-1346839480 (var2741) Bool)
(declare-fun setQuiet/-793872503 (var1647 Bool) void)
(declare-fun var3357_parse/-1783483348 (var3357 var1647) void)
(declare-fun charset/-1346839480 (var2741) var3670)
(declare-fun setDefaultCharset/-804578634 (var1647 var3670) void)
(declare-const null-var2741 var2741)
(declare-const null-var3368 var3368)
(declare-const var1345-ROOT var1345)
(declare-const var1757-UNKNOWN var1757)
(declare-const var3044-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic (Array Int Int))
(declare-const var2935 var2741) ; Statement: r8 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var2935 null-var2741)))
(declare-const var2999 var3368) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2999 null-var3368)))
(assert true)
(define-const var3949 String (getName/1128186653 var2999)) ; Statement: $r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(define-const var852 var1345 var1345-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1310 String (toLowerCase/1946809429 var3949 var852)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var1689 String "stdin") ; Statement: $r4 = "stdin" 
(assert true)
(define-const var3908 Bool (= var1689 var1310)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0) 
(assert (= (ite var3908 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2772 var1757 (var1757_valueOf/-1988079177 var2999)) ; Statement: r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0) 
(define-const var902 var3357 (var2691_bootstrap$/90362945 var2999)) ; Statement: r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.File)>(r0) 
(assert true) ; Non Conditional
(define-const var995 var1757 var1757-UNKNOWN) ; Statement: $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN> 
 ; Statement: if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert (not (= var2772 var995))) ; Cond: r13 != $r5 
(define-const var3891 (Array Int Int) var3044-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic) ; Statement: $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert true)
(define-const var236 Int (ordinal/1898256422 var2772)) ; Statement: $i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>() 
(define-const var734 Int (select var3891 var236)) ; Statement: $i1 = $r6[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; } 
(assert (and (not (= var734 2)) (and (not (= var734 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2646 var1730 var1730-init) ; Statement: $r10 = new org.apache.poi.xslf.util.PPTHandler 
(assert true)
;(assert (<init>/1617551692 var2646)) ; Statement: specialinvoke $r10.<org.apache.poi.xslf.util.PPTHandler: void <init>()>() 

(declare-const var2646!1 var1730)
(define-const var922 var1647 (cast-from-var1730-to-var1647 var2646!1)) ; Statement: r15 = $r10 
(assert true) ; Non Conditional
(define-const var163 Bool (ignoreParse/-1346839480 var2935)) ; Statement: $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse> 
(assert true)
;(assert (setIgnoreParse/1874140438 var922 var163)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1) 

(declare-const var922!1 var1647)
(declare-const var163!1 Bool)
(define-const var3810 Bool (quiet/-1346839480 var2935)) ; Statement: $z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet> 
(assert true)
;(assert (setQuiet/-793872503 var922!1 var3810)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2) 

(declare-const var922!2 var1647)
(declare-const var3810!1 Bool)
;(assert (var3357_parse/-1783483348 var902 var922!2)) ; Statement: interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15) 

(declare-const var902!1 var3357)
(declare-const var922!3 var1647)
(define-const var778 var3670 (charset/-1346839480 var2935)) ; Statement: $r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset> 
(assert true)
;(assert (setDefaultCharset/-804578634 var922!3 var778)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16) 

(declare-const var922!4 var1647)
(declare-const var778!1 var3670)
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1757_valueOf/-1988079177=([java.io.File], org.apache.poi.poifs.filesystem.FileMagic), var2691_bootstrap$/90362945=([java.io.File], org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer), ordinal/1898256422=([org.apache.poi.poifs.filesystem.FileMagic], int), var1730-init=([], org.apache.poi.xslf.util.PPTHandler), <init>/1617551692=([org.apache.poi.xslf.util.PPTHandler], void), cast-from-var1730-to-var1647=([org.apache.poi.xslf.util.PPTHandler], org.apache.poi.xslf.util.MFProxy), ignoreParse/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setIgnoreParse/1874140438=([org.apache.poi.xslf.util.MFProxy, boolean], void), quiet/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setQuiet/-793872503=([org.apache.poi.xslf.util.MFProxy, boolean], void), var3357_parse/-1783483348=([org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, org.apache.poi.xslf.util.MFProxy], void), charset/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.nio.charset.Charset), setDefaultCharset/-804578634=([org.apache.poi.xslf.util.MFProxy, java.nio.charset.Charset], void)}
; {var2741=org.apache.poi.xslf.util.PPTX2PNG, var2935=r8, var3368=java.io.File, var2999=r0, var3949=$r2, var1345=java.util.Locale, var852=$r1, var1310=r3, var1689=$r4, var3908=$z0, var1757=org.apache.poi.poifs.filesystem.FileMagic, var2772=r13, var3357=org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, var2691=org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476, var902=r14, var995=$r5, var3044=org.apache.poi.xslf.util.PPTX2PNG$2, var3891=$r6, var236=$i0, var734=$i1, var1730=org.apache.poi.xslf.util.PPTHandler, var2646=$r10, var1647=org.apache.poi.xslf.util.MFProxy, var922=r15, var163=$z1, var3810=$z2, var3670=java.nio.charset.Charset, var778=$r16}
; {org.apache.poi.xslf.util.PPTX2PNG=var2741, r8=var2935, java.io.File=var3368, r0=var2999, $r2=var3949, java.util.Locale=var1345, $r1=var852, r3=var1310, $r4=var1689, $z0=var3908, org.apache.poi.poifs.filesystem.FileMagic=var1757, r13=var2772, org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer=var3357, org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476=var2691, r14=var902, $r5=var995, org.apache.poi.xslf.util.PPTX2PNG$2=var3044, $r6=var3891, $i0=var236, $i1=var734, org.apache.poi.xslf.util.PPTHandler=var1730, $r10=var2646, org.apache.poi.xslf.util.MFProxy=var1647, r15=var922, $z1=var163, $z2=var3810, java.nio.charset.Charset=var3670, $r16=var778}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: java.io.File;	$r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = "stdin";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0);	r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0);	r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_4__476: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.File)>(r0);	$r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>;	if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>();	$i1 = $r6[$i0];	lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; };	$r10 = new org.apache.poi.xslf.util.PPTHandler;	specialinvoke $r10.<org.apache.poi.xslf.util.PPTHandler: void <init>()>();	r15 = $r10;	$z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1);	$z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2);	interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15);	$r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16);	return r15
;block_num 6