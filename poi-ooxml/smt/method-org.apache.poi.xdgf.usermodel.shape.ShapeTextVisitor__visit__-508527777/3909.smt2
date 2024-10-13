(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2477 0)
(declare-sort var966 0)
(declare-sort var1413 0)
(declare-sort var1138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/370154982 (var2477) String)
(declare-fun getText/-1864247102 (var966) var1138)
(declare-fun getTextContent/-1302379777 (var1138) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2477 var2477)
(declare-const null-var966 var966)
(declare-const null-var1413 var1413)
(declare-const null-Int Int)
(declare-const var2147 var2477) ; Statement: r0 := @this: org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor 
(assert (not (= var2147 null-var2477)))
(declare-const var244 var966) ; Statement: r1 := @parameter0: org.apache.poi.xdgf.usermodel.XDGFShape 
(assert (not (= var244 null-var966)))
(declare-const var1054 var1413) ; Statement: r7 := @parameter1: java.awt.geom.AffineTransform 
(assert (not (= var1054 null-var1413)))
(declare-const var2408 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2408 null-Int)))
(define-const var3835 String (text/370154982 var2147)) ; Statement: $r2 = r0.<org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor: java.lang.StringBuilder text> 
(assert true)
(define-const var3757 var1138 (getText/-1864247102 var244)) ; Statement: $r3 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFText getText()>() 
(assert true)
(define-const var2512 String (getTextContent/-1302379777 var3757)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.poi.xdgf.usermodel.XDGFText: java.lang.String getTextContent()>() 
(assert true)
(define-const var846 String (trim/-847153721 var2512)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>() 
(assert true)
;(assert (append/672562846 var3835 var846)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3835!1 String)
(assert (= var3835!1 (str.++ var3835 var846)))
(define-const var3231 String (text/370154982 var2147)) ; Statement: $r6 = r0.<org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor: java.lang.StringBuilder text> 
(assert true)
;(assert (append/-1166366385 var3231 10)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3231!1 String)
(assert (str.prefixof var3231 var3231!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {text/370154982=([org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor], java.lang.StringBuilder), getText/-1864247102=([org.apache.poi.xdgf.usermodel.XDGFShape], org.apache.poi.xdgf.usermodel.XDGFText), getTextContent/-1302379777=([org.apache.poi.xdgf.usermodel.XDGFText], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2477=org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor, var2147=r0, var966=org.apache.poi.xdgf.usermodel.XDGFShape, var244=r1, var1413=java.awt.geom.AffineTransform, var1054=r7, var2408=i0, var3835=$r2, var1138=org.apache.poi.xdgf.usermodel.XDGFText, var3757=$r3, var2512=$r4, var846=$r5, var3231=$r6}
; {org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor=var2477, r0=var2147, org.apache.poi.xdgf.usermodel.XDGFShape=var966, r1=var244, java.awt.geom.AffineTransform=var1413, r7=var1054, i0=var2408, $r2=var3835, org.apache.poi.xdgf.usermodel.XDGFText=var1138, $r3=var3757, $r4=var2512, $r5=var846, $r6=var3231}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor;	r1 := @parameter0: org.apache.poi.xdgf.usermodel.XDGFShape;	r7 := @parameter1: java.awt.geom.AffineTransform;	i0 := @parameter2: int;	$r2 = r0.<org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor: java.lang.StringBuilder text>;	$r3 = virtualinvoke r1.<org.apache.poi.xdgf.usermodel.XDGFShape: org.apache.poi.xdgf.usermodel.XDGFText getText()>();	$r4 = virtualinvoke $r3.<org.apache.poi.xdgf.usermodel.XDGFText: java.lang.String getTextContent()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = r0.<org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor: java.lang.StringBuilder text>;	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	return
;block_num 1