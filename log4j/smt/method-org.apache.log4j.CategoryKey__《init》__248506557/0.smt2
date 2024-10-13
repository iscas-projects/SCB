(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2771 0)
(declare-sort var2861 0)
(declare-sort var3303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3303) void)
(declare-fun cast-from-var2771-to-var3303 (var2771) var3303)
(declare-fun name/-1952378729 (var2771) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun hashCache/-1952378729 (var2771) Int)
(declare-const null-var2771 var2771)
(declare-const null-String String)
(declare-const var227 var2771) ; Statement: r0 := @this: org.apache.log4j.CategoryKey 
(assert (not (= var227 null-var2771)))
(declare-const var1641 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1641 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2771-to-var3303 var227))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var227!1 var2771)
(declare-const var227!2 var2771)
(assert (not (= var227!2 null-var2771)))
(assert (= (name/-1952378729 var227!2) var1641)) ; Statement: r0.<org.apache.log4j.CategoryKey: java.lang.String name> = r1 
(assert true)
(define-const var1714 Int (hashCode/-467973558 var1641)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
(declare-const var227!3 var2771)
(assert (not (= var227!3 null-var2771)))
(assert (= (hashCache/-1952378729 var227!3) var1714)) ; Statement: r0.<org.apache.log4j.CategoryKey: int hashCache> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2771-to-var3303=([org.apache.log4j.CategoryKey], java.lang.Object), name/-1952378729=([org.apache.log4j.CategoryKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), hashCache/-1952378729=([org.apache.log4j.CategoryKey], int)}
; {var2771=org.apache.log4j.CategoryKey, var227=r0, var1641=r1, var2861=null_type, var3303=java.lang.Object, var1714=$i0}
; {org.apache.log4j.CategoryKey=var2771, r0=var227, r1=var1641, null_type=var2861, java.lang.Object=var3303, $i0=var1714}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.log4j.CategoryKey;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.CategoryKey: java.lang.String name> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	r0.<org.apache.log4j.CategoryKey: int hashCache> = $i0;	return
;block_num 1