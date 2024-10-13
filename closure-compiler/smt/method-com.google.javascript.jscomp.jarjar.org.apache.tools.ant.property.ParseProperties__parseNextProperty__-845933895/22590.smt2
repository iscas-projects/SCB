(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var191 0)
(declare-sort var1084 0)
(declare-sort var2415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIndex/-2136393185 (var2415) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var191 var191)
(declare-const null-String String)
(declare-const null-var2415 var2415)
(declare-const var333 var191) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseProperties 
(assert (not (= var333 null-var191)))
(declare-const var1001 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1001 null-String)))
(declare-const var2312 var2415) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var2312 null-var2415)))
(assert true)
(define-const var546 Int (getIndex/-2136393185 var2312)) ; Statement: i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
(define-const var3353 Int (length/-134980193 var1001)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i0 <= $i1 goto r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseProperties: java.lang.String parsePropertyName(java.lang.String,java.text.ParsePosition)>(r1, r0) 
(assert (not (<= var546 var3353))) ; Negate: Cond: i0 <= $i1  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getIndex/-2136393185=([java.text.ParsePosition], int), length/-134980193=([java.lang.String], int)}
; {var191=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseProperties, var333=r2, var1001=r1, var1084=null_type, var2415=java.text.ParsePosition, var2312=r0, var546=i0, var3353=$i1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseProperties=var191, r2=var333, r1=var1001, null_type=var1084, java.text.ParsePosition=var2415, r0=var2312, i0=var546, $i1=var3353}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseProperties;	r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	i0 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if i0 <= $i1 goto r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.property.ParseProperties: java.lang.String parsePropertyName(java.lang.String,java.text.ParsePosition)>(r1, r0);	return null
;block_num 2