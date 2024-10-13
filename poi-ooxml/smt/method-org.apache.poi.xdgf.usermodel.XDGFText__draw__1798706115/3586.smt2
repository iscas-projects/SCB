(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2386 0)
(declare-sort var1058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTextContent/-1302379777 (var2386) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2386 var2386)
(declare-const null-var1058 var1058)
(declare-const var3018 var2386) ; Statement: r0 := @this: org.apache.poi.xdgf.usermodel.XDGFText 
(assert (not (= var3018 null-var2386)))
(declare-const var2961 var1058) ; Statement: r5 := @parameter0: java.awt.Graphics2D 
(assert (not (= var2961 null-var1058)))
(assert true)
(define-const var3067 String (getTextContent/-1302379777 var3018)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFText: java.lang.String getTextContent()>() 
(assert true)
(define-const var1095 Int (length/-134980193 var3067)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto r2 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFText: java.awt.geom.Rectangle2D$Double getTextBounds()>() 
(assert (not (not (= var1095 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTextContent/-1302379777=([org.apache.poi.xdgf.usermodel.XDGFText], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var2386=org.apache.poi.xdgf.usermodel.XDGFText, var3018=r0, var1058=java.awt.Graphics2D, var2961=r5, var3067=r1, var1095=$i0}
; {org.apache.poi.xdgf.usermodel.XDGFText=var2386, r0=var3018, java.awt.Graphics2D=var1058, r5=var2961, r1=var3067, $i0=var1095}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xdgf.usermodel.XDGFText;	r5 := @parameter0: java.awt.Graphics2D;	r1 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFText: java.lang.String getTextContent()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i0 != 0 goto r2 = virtualinvoke r0.<org.apache.poi.xdgf.usermodel.XDGFText: java.awt.geom.Rectangle2D$Double getTextBounds()>();	return
;block_num 2