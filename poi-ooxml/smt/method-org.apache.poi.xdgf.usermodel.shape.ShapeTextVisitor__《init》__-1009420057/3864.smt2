(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3042 0)
(declare-sort var1322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-557358764 (var1322) void)
(declare-fun cast-from-var3042-to-var1322 (var3042) var1322)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun text/370154982 (var3042) String)
(declare-const null-var3042 var3042)
(declare-const var1203 var3042) ; Statement: r0 := @this: org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor 
(assert (not (= var1203 null-var3042)))
(assert true)
;(assert (<init>/-557358764 (cast-from-var3042-to-var1322 var1203))) ; Statement: specialinvoke r0.<org.apache.poi.xdgf.usermodel.shape.ShapeVisitor: void <init>()>() 

(declare-const var1203!1 var3042)
(define-const var3747 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3747)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3747!1 String)
(assert (= var3747!1 ""))
(declare-const var1203!2 var3042)
(assert (not (= var1203!2 null-var3042)))
(assert (= (text/370154982 var1203!2) var3747!1)) ; Statement: r0.<org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor: java.lang.StringBuilder text> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-557358764=([org.apache.poi.xdgf.usermodel.shape.ShapeVisitor], void), cast-from-var3042-to-var1322=([org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor], org.apache.poi.xdgf.usermodel.shape.ShapeVisitor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), text/370154982=([org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor], java.lang.StringBuilder)}
; {var3042=org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor, var1203=r0, var1322=org.apache.poi.xdgf.usermodel.shape.ShapeVisitor, var3747=$r1}
; {org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor=var3042, r0=var1203, org.apache.poi.xdgf.usermodel.shape.ShapeVisitor=var1322, $r1=var3747}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor;	specialinvoke r0.<org.apache.poi.xdgf.usermodel.shape.ShapeVisitor: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor: java.lang.StringBuilder text> = $r1;	return
;block_num 1