(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var49 0)
(declare-sort var2733 0)
(declare-sort var1081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var2733) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-var2733 var2733)
(declare-const null-var1081 var1081)
(declare-const var1215 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1215 null-String)))
(declare-const var1316 var2733) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var1316 null-var2733)))
(declare-const var3083 var1081) ; Statement: r2 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseNextProperty 
(assert (not (= var3083 null-var1081)))
(assert true)
(define-const var881 Int (getIndex/-2136393185 var1316)) ; Statement: i4 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var3709 Int (length/-134980193 var1215)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3895 Int (- var3709 var881)) ; Statement: $i1 = $i0 - i4 
 ; Statement: if $i1 < 2 goto return null 
(assert (< var3895 2)) ; Cond: $i1 < 2 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), length/-134980193=([java.lang.String], int)}
; {var1215=r1, var49=null_type, var2733=java.text.ParsePosition, var1316=r0, var1081=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseNextProperty, var3083=r2, var881=i4, var3709=$i0, var3895=$i1}
; {r1=var1215, null_type=var49, java.text.ParsePosition=var2733, r0=var1316, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseNextProperty=var1081, r2=var3083, i4=var881, $i0=var3709, $i1=var3895}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	r2 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseNextProperty;	i4 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 - i4;	if $i1 < 2 goto return null;	return null
;block_num 2