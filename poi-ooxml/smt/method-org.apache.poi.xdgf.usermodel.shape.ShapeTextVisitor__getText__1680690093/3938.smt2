(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3622 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/370154982 (var3622) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3622 var3622)
(declare-const var3528 var3622) ; Statement: r0 := @this: org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor 
(assert (not (= var3528 null-var3622)))
(define-const var1237 String (text/370154982 var3528)) ; Statement: $r1 = r0.<org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor: java.lang.StringBuilder text> 
(assert true)
(define-const var2462 String (toString/-2075883882 var1237)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {text/370154982=([org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3622=org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor, var3528=r0, var1237=$r1, var2462=$r2}
; {org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor=var3622, r0=var3528, $r1=var1237, $r2=var2462}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor;	$r1 = r0.<org.apache.poi.xdgf.usermodel.shape.ShapeTextVisitor: java.lang.StringBuilder text>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1