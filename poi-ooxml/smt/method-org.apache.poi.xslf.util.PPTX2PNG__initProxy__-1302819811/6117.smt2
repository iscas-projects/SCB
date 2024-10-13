(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var262 0)
(declare-sort var1118 0)
(declare-sort var122 0)
(declare-sort var3420 0)
(declare-sort var2392 0)
(declare-sort var897 0)
(declare-sort var2512 0)
(declare-sort var3338 0)
(declare-sort var3243 0)
(declare-sort var2041 0)
(declare-sort var3339 0)
(declare-sort var319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var1118) String)
(declare-fun toLowerCase/1946809429 (String var122) String)
(declare-fun var897_prepareToCheckMagic/-901623769 (var3420) var3420)
(declare-fun var897_valueOf/-2014163495 (var3420) var897)
(declare-fun var3338_bootstrap$/907293299 (var3420) var2512)
(declare-fun ordinal/1898256422 (var897) Int)
(declare-fun var2041-init () var2041)
(declare-fun <init>/414478320 (var2041) void)
(declare-fun cast-from-var2041-to-var3339 (var2041) var3339)
(declare-fun ignoreParse/-1346839480 (var262) Bool)
(declare-fun setIgnoreParse/1874140438 (var3339 Bool) void)
(declare-fun quiet/-1346839480 (var262) Bool)
(declare-fun setQuiet/-793872503 (var3339 Bool) void)
(declare-fun var2512_parse/-1783483348 (var2512 var3339) void)
(declare-fun charset/-1346839480 (var262) var319)
(declare-fun setDefaultCharset/-804578634 (var3339 var319) void)
(declare-const null-var262 var262)
(declare-const null-var1118 var1118)
(declare-const var122-ROOT var122)
(declare-const var2392-in var3420)
(declare-const var897-UNKNOWN var897)
(declare-const var3243-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic (Array Int Int))
(declare-const var3365 var262) ; Statement: r8 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var3365 null-var262)))
(declare-const var3631 var1118) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3631 null-var1118)))
(assert true)
(define-const var1873 String (getName/1128186653 var3631)) ; Statement: $r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(define-const var421 var122 var122-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1617 String (toLowerCase/1946809429 var1873 var421)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var3093 String "stdin") ; Statement: $r4 = "stdin" 
(assert true)
(define-const var2299 Bool (= var3093 var1617)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0) 
(assert (not (= (ite var2299 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var165 var3420 var2392-in) ; Statement: $r11 = <java.lang.System: java.io.InputStream in> 
(define-const var3425 var3420 (var897_prepareToCheckMagic/-901623769 var165)) ; Statement: r12 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: java.io.InputStream prepareToCheckMagic(java.io.InputStream)>($r11) 
(define-const var3871 var897 (var897_valueOf/-2014163495 var3425)) ; Statement: r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.InputStream)>(r12) 
(define-const var263 var2512 (var3338_bootstrap$/907293299 var3425)) ; Statement: r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.InputStream)>(r12) 
 ; Statement: goto [?= $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>] 
(assert true) ; Non Conditional
(define-const var3965 var897 var897-UNKNOWN) ; Statement: $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN> 
 ; Statement: if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert (not (= var3871 var3965))) ; Cond: r13 != $r5 
(define-const var941 (Array Int Int) var3243-$SwitchMap$org$apache$poi$poifs$filesystem$FileMagic) ; Statement: $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic> 
(assert true)
(define-const var392 Int (ordinal/1898256422 var3871)) ; Statement: $i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>() 
(define-const var226 Int (select var941 var392)) ; Statement: $i1 = $r6[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; } 
(assert (and (= var226 2) (and (not (= var226 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2565 var2041 var2041-init) ; Statement: $r7 = new org.apache.poi.xslf.util.WMFHandler 
(assert true)
;(assert (<init>/414478320 var2565)) ; Statement: specialinvoke $r7.<org.apache.poi.xslf.util.WMFHandler: void <init>()>() 

(declare-const var2565!1 var2041)
(define-const var3598 var3339 (cast-from-var2041-to-var3339 var2565!1)) ; Statement: r15 = $r7 
 ; Statement: goto [?= $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>] 
(assert true) ; Non Conditional
(define-const var1181 Bool (ignoreParse/-1346839480 var3365)) ; Statement: $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse> 
(assert true)
;(assert (setIgnoreParse/1874140438 var3598 var1181)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1) 

(declare-const var3598!1 var3339)
(declare-const var1181!1 Bool)
(define-const var2310 Bool (quiet/-1346839480 var3365)) ; Statement: $z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet> 
(assert true)
;(assert (setQuiet/-793872503 var3598!1 var2310)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2) 

(declare-const var3598!2 var3339)
(declare-const var2310!1 Bool)
;(assert (var2512_parse/-1783483348 var263 var3598!2)) ; Statement: interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15) 

(declare-const var263!1 var2512)
(declare-const var3598!3 var3339)
(define-const var2218 var319 (charset/-1346839480 var3365)) ; Statement: $r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset> 
(assert true)
;(assert (setDefaultCharset/-804578634 var3598!3 var2218)) ; Statement: virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16) 

(declare-const var3598!4 var3339)
(declare-const var2218!1 var319)
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var897_prepareToCheckMagic/-901623769=([java.io.InputStream], java.io.InputStream), var897_valueOf/-2014163495=([java.io.InputStream], org.apache.poi.poifs.filesystem.FileMagic), var3338_bootstrap$/907293299=([java.io.InputStream], org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer), ordinal/1898256422=([org.apache.poi.poifs.filesystem.FileMagic], int), var2041-init=([], org.apache.poi.xslf.util.WMFHandler), <init>/414478320=([org.apache.poi.xslf.util.WMFHandler], void), cast-from-var2041-to-var3339=([org.apache.poi.xslf.util.WMFHandler], org.apache.poi.xslf.util.MFProxy), ignoreParse/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setIgnoreParse/1874140438=([org.apache.poi.xslf.util.MFProxy, boolean], void), quiet/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), setQuiet/-793872503=([org.apache.poi.xslf.util.MFProxy, boolean], void), var2512_parse/-1783483348=([org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, org.apache.poi.xslf.util.MFProxy], void), charset/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.nio.charset.Charset), setDefaultCharset/-804578634=([org.apache.poi.xslf.util.MFProxy, java.nio.charset.Charset], void)}
; {var262=org.apache.poi.xslf.util.PPTX2PNG, var3365=r8, var1118=java.io.File, var3631=r0, var1873=$r2, var122=java.util.Locale, var421=$r1, var1617=r3, var3093=$r4, var2299=$z0, var3420=java.io.InputStream, var2392=java.lang.System, var165=$r11, var897=org.apache.poi.poifs.filesystem.FileMagic, var3425=r12, var3871=r13, var2512=org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer, var3338=org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479, var263=r14, var3965=$r5, var3243=org.apache.poi.xslf.util.PPTX2PNG$2, var941=$r6, var392=$i0, var226=$i1, var2041=org.apache.poi.xslf.util.WMFHandler, var2565=$r7, var3339=org.apache.poi.xslf.util.MFProxy, var3598=r15, var1181=$z1, var2310=$z2, var319=java.nio.charset.Charset, var2218=$r16}
; {org.apache.poi.xslf.util.PPTX2PNG=var262, r8=var3365, java.io.File=var1118, r0=var3631, $r2=var1873, java.util.Locale=var122, $r1=var421, r3=var1617, $r4=var3093, $z0=var2299, java.io.InputStream=var3420, java.lang.System=var2392, $r11=var165, org.apache.poi.poifs.filesystem.FileMagic=var897, r12=var3425, r13=var3871, org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer=var2512, org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479=var3338, r14=var263, $r5=var3965, org.apache.poi.xslf.util.PPTX2PNG$2=var3243, $r6=var941, $i0=var392, $i1=var226, org.apache.poi.xslf.util.WMFHandler=var2041, $r7=var2565, org.apache.poi.xslf.util.MFProxy=var3339, r15=var3598, $z1=var1181, $z2=var2310, java.nio.charset.Charset=var319, $r16=var2218}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r0 := @parameter0: java.io.File;	$r2 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = "stdin";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.File)>(r0);	$r11 = <java.lang.System: java.io.InputStream in>;	r12 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: java.io.InputStream prepareToCheckMagic(java.io.InputStream)>($r11);	r13 = staticinvoke <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic valueOf(java.io.InputStream)>(r12);	r14 = staticinvoke <org.apache.poi.xslf.util.PPTX2PNG$lambda_initProxy_3__479: org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer bootstrap$(java.io.InputStream)>(r12);	goto [?= $r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>];	$r5 = <org.apache.poi.poifs.filesystem.FileMagic: org.apache.poi.poifs.filesystem.FileMagic UNKNOWN>;	if r13 != $r5 goto $r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$r6 = <org.apache.poi.xslf.util.PPTX2PNG$2: int[] $SwitchMap$org$apache$poi$poifs$filesystem$FileMagic>;	$i0 = virtualinvoke r13.<org.apache.poi.poifs.filesystem.FileMagic: int ordinal()>();	$i1 = $r6[$i0];	lookupswitch($i1) {     case 1: goto $r9 = new org.apache.poi.xslf.util.EMFHandler;     case 2: goto $r7 = new org.apache.poi.xslf.util.WMFHandler;     default: goto $r10 = new org.apache.poi.xslf.util.PPTHandler; };	$r7 = new org.apache.poi.xslf.util.WMFHandler;	specialinvoke $r7.<org.apache.poi.xslf.util.WMFHandler: void <init>()>();	r15 = $r7;	goto [?= $z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>];	$z1 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean ignoreParse>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setIgnoreParse(boolean)>($z1);	$z2 = r8.<org.apache.poi.xslf.util.PPTX2PNG: boolean quiet>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setQuiet(boolean)>($z2);	interfaceinvoke r14.<org.apache.poi.xslf.util.PPTX2PNG$ProxyConsumer: void parse(org.apache.poi.xslf.util.MFProxy)>(r15);	$r16 = r8.<org.apache.poi.xslf.util.PPTX2PNG: java.nio.charset.Charset charset>;	virtualinvoke r15.<org.apache.poi.xslf.util.MFProxy: void setDefaultCharset(java.nio.charset.Charset)>($r16);	return r15
;block_num 6