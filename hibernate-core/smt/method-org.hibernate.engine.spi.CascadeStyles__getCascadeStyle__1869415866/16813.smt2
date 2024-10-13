(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1782 0)
(declare-sort var3649 0)
(declare-sort var3 0)
(declare-sort var394 0)
(declare-sort var2838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3649_get/1088891777 (var3649 var394) var394)
(declare-fun cast-from-String-to-var394 (String) var394)
(declare-fun cast-from-var394-to-var2838 (var394) var2838)
(declare-const null-String String)
(declare-const var3-STYLES var3649)
(declare-const null-var2838 var2838)
(declare-const var3851 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3851 null-String)))
(define-const var721 var3649 var3-STYLES) ; Statement: $r1 = <org.hibernate.engine.spi.CascadeStyles: java.util.Map STYLES> 
(define-const var1167 var394 (var3649_get/1088891777 var721 (cast-from-String-to-var394 var3851))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var3566 var2838 (cast-from-var394-to-var2838 var1167)) ; Statement: r3 = (org.hibernate.engine.spi.CascadeStyle) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var3566 null-var2838))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3649_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var394=([java.lang.String], java.lang.Object), cast-from-var394-to-var2838=([java.lang.Object], org.hibernate.engine.spi.CascadeStyle)}
; {var3851=r0, var1782=null_type, var3649=java.util.Map, var3=org.hibernate.engine.spi.CascadeStyles, var721=$r1, var394=java.lang.Object, var1167=$r2, var2838=org.hibernate.engine.spi.CascadeStyle, var3566=r3}
; {r0=var3851, null_type=var1782, java.util.Map=var3649, org.hibernate.engine.spi.CascadeStyles=var3, $r1=var721, java.lang.Object=var394, $r2=var1167, org.hibernate.engine.spi.CascadeStyle=var2838, r3=var3566}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <org.hibernate.engine.spi.CascadeStyles: java.util.Map STYLES>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (org.hibernate.engine.spi.CascadeStyle) $r2;	if r3 != null goto return r3;	return r3
;block_num 2