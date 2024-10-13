(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var427 0)
(declare-sort var2167 0)
(declare-sort var2600 0)
(declare-sort var1195 0)
(declare-sort var1061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2167) ClassObject)
(declare-fun cast-from-var427-to-var2167 (var427) var2167)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun scope/-1094587980 (var1195) var2600)
(declare-fun cast-from-var427-to-var1195 (var427) var1195)
(declare-fun st/-361780184 (var2600) var1061)
(declare-fun append/-1031950772 (String var2167) String)
(declare-fun cast-from-var1061-to-var2167 (var1061) var2167)
(declare-fun expr/1133719223 (var427) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun exprStartChar/1133719223 (var427) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun exprStopChar/1133719223 (var427) Int)
(declare-fun outputStartChar/-1094587980 (var1195) Int)
(declare-fun outputStopChar/-1094587980 (var1195) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var427 var427)
(declare-const var741 var427) ; Statement: r1 := @this: org.stringtemplate.v4.debug.EvalExprEvent 
(assert (not (= var741 null-var427)))
(define-const var2267 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2267)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2267!1 String)
(assert (= var2267!1 ""))
(assert true)
(define-const var2065 ClassObject (getClass/1258963082 (cast-from-var427-to-var2167 var741))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3948 String (getSimpleName/-390194377 var2065)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1392 String (append/672562846 var2267!1 var3948)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2267!2 String)
(assert (= var2267!2 (str.++ var2267!1 var3948)))
(assert true)
(define-const var846 String (append/672562846 var1392 "{self=")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{self=") 
(declare-const var1392!1 String)
(assert (= var1392!1 (str.++ var1392 "{self=")))
(define-const var3059 var2600 (scope/-1094587980 (cast-from-var427-to-var1195 var741))) ; Statement: $r5 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: org.stringtemplate.v4.InstanceScope scope> 
(define-const var898 var1061 (st/-361780184 var3059)) ; Statement: $r6 = $r5.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(assert true)
(define-const var2721 String (append/-1031950772 var846 (cast-from-var1061-to-var2167 var898))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var846!1 String)
(assert (str.prefixof var846 var846!1))
(assert true)
(define-const var668 String (append/672562846 var2721 ", expr=\u0027")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expr=\'") 
(declare-const var2721!1 String)
(assert (= var2721!1 (str.++ var2721 ", expr=\u0027")))
(define-const var417 String (expr/1133719223 var741)) ; Statement: $r9 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: java.lang.String expr> 
(assert true)
(define-const var2934 String (append/672562846 var668 var417)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var668!1 String)
(assert (= var668!1 (str.++ var668 var417)))
(assert true)
(define-const var443 String (append/-1166366385 var2934 39)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var2934!1 String)
(assert (str.prefixof var2934 var2934!1))
(assert true)
(define-const var2750 String (append/672562846 var443 ", exprStartChar=")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exprStartChar=") 
(declare-const var443!1 String)
(assert (= var443!1 (str.++ var443 ", exprStartChar=")))
(define-const var1984 Int (exprStartChar/1133719223 var741)) ; Statement: $i0 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: int exprStartChar> 
(assert true)
(define-const var1919 String (append/-1001720160 var2750 var1984)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2750!1 String)
(assert (str.prefixof var2750 var2750!1))
(assert true)
(define-const var1928 String (append/672562846 var1919 ", exprStopChar=")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exprStopChar=") 
(declare-const var1919!1 String)
(assert (= var1919!1 (str.++ var1919 ", exprStopChar=")))
(define-const var3782 Int (exprStopChar/1133719223 var741)) ; Statement: $i1 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: int exprStopChar> 
(assert true)
(define-const var686 String (append/-1001720160 var1928 var3782)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1928!1 String)
(assert (str.prefixof var1928 var1928!1))
(assert true)
(define-const var3880 String (append/672562846 var686 ", start=")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", start=") 
(declare-const var686!1 String)
(assert (= var686!1 (str.++ var686 ", start=")))
(define-const var3387 Int (outputStartChar/-1094587980 (cast-from-var427-to-var1195 var741))) ; Statement: $i2 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: int outputStartChar> 
(assert true)
(define-const var1096 String (append/-1001720160 var3880 var3387)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3880!1 String)
(assert (str.prefixof var3880 var3880!1))
(assert true)
(define-const var1300 String (append/672562846 var1096 ", stop=")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", stop=") 
(declare-const var1096!1 String)
(assert (= var1096!1 (str.++ var1096 ", stop=")))
(define-const var3896 Int (outputStopChar/-1094587980 (cast-from-var427-to-var1195 var741))) ; Statement: $i3 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: int outputStopChar> 
(assert true)
(define-const var540 String (append/-1001720160 var1300 var3896)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var1300!1 String)
(assert (str.prefixof var1300 var1300!1))
(assert true)
(define-const var1976 String (append/-1166366385 var540 125)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var540!1 String)
(assert (str.prefixof var540 var540!1))
(assert true)
(define-const var2913 String (toString/-2075883882 var1976)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var427-to-var2167=([org.stringtemplate.v4.debug.EvalExprEvent], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), scope/-1094587980=([org.stringtemplate.v4.debug.InterpEvent], org.stringtemplate.v4.InstanceScope), cast-from-var427-to-var1195=([org.stringtemplate.v4.debug.EvalExprEvent], org.stringtemplate.v4.debug.InterpEvent), st/-361780184=([org.stringtemplate.v4.InstanceScope], org.stringtemplate.v4.ST), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1061-to-var2167=([org.stringtemplate.v4.ST], java.lang.Object), expr/1133719223=([org.stringtemplate.v4.debug.EvalExprEvent], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), exprStartChar/1133719223=([org.stringtemplate.v4.debug.EvalExprEvent], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), exprStopChar/1133719223=([org.stringtemplate.v4.debug.EvalExprEvent], int), outputStartChar/-1094587980=([org.stringtemplate.v4.debug.InterpEvent], int), outputStopChar/-1094587980=([org.stringtemplate.v4.debug.InterpEvent], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var427=org.stringtemplate.v4.debug.EvalExprEvent, var741=r1, var2267=$r0, var2167=java.lang.Object, var2065=$r2, var3948=$r3, var1392=$r4, var846=$r7, var2600=org.stringtemplate.v4.InstanceScope, var1195=org.stringtemplate.v4.debug.InterpEvent, var3059=$r5, var1061=org.stringtemplate.v4.ST, var898=$r6, var2721=$r8, var668=$r10, var417=$r9, var2934=$r11, var443=$r12, var2750=$r13, var1984=$i0, var1919=$r14, var1928=$r15, var3782=$i1, var686=$r16, var3880=$r17, var3387=$i2, var1096=$r18, var1300=$r19, var3896=$i3, var540=$r20, var1976=$r21, var2913=$r22}
; {org.stringtemplate.v4.debug.EvalExprEvent=var427, r1=var741, $r0=var2267, java.lang.Object=var2167, $r2=var2065, $r3=var3948, $r4=var1392, $r7=var846, org.stringtemplate.v4.InstanceScope=var2600, org.stringtemplate.v4.debug.InterpEvent=var1195, $r5=var3059, org.stringtemplate.v4.ST=var1061, $r6=var898, $r8=var2721, $r10=var668, $r9=var417, $r11=var2934, $r12=var443, $r13=var2750, $i0=var1984, $r14=var1919, $r15=var1928, $i1=var3782, $r16=var686, $r17=var3880, $i2=var3387, $r18=var1096, $r19=var1300, $i3=var3896, $r20=var540, $r21=var1976, $r22=var2913}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.debug.EvalExprEvent;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{self=");	$r5 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: org.stringtemplate.v4.InstanceScope scope>;	$r6 = $r5.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expr=\'");	$r9 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: java.lang.String expr>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exprStartChar=");	$i0 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: int exprStartChar>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", exprStopChar=");	$i1 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: int exprStopChar>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", start=");	$i2 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: int outputStartChar>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", stop=");	$i3 = r1.<org.stringtemplate.v4.debug.EvalExprEvent: int outputStopChar>;	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 1