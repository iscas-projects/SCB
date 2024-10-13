(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1438 0)
(declare-sort var1071 0)
(declare-sort var189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1071-init () var1071)
(declare-fun <init>/273077462 (var1071) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var189_firstIndexOfChar/-2086065330 (String var1071 Int) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var222 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var222 null-String)))
(declare-const var3338 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3338 null-String)))
(declare-const var1451 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1451 null-Int)))
(define-const var947 var1071 var1071-init) ; Statement: $r3 = new java.util.BitSet 
(assert true)
;(assert (<init>/273077462 var947)) ; Statement: specialinvoke $r3.<java.util.BitSet: void <init>()>() 

(declare-const var947!1 var1071)
(define-const var2059 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var2599 Int (length/-134980193 var3338)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $i2 = staticinvoke <org.hibernate.internal.util.StringHelper: int firstIndexOfChar(java.lang.String,java.util.BitSet,int)>(r2, $r3, i1) 
(assert (>= var2059 var2599)) ; Cond: i4 >= i0 
(define-const var2888 Int (var189_firstIndexOfChar/-2086065330 var222 var947!1 var1451)) ; Statement: $i2 = staticinvoke <org.hibernate.internal.util.StringHelper: int firstIndexOfChar(java.lang.String,java.util.BitSet,int)>(r2, $r3, i1) 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1071-init=([], java.util.BitSet), <init>/273077462=([java.util.BitSet], void), length/-134980193=([java.lang.String], int), var189_firstIndexOfChar/-2086065330=([java.lang.String, java.util.BitSet, int], int)}
; {var222=r2, var1438=null_type, var3338=r1, var1451=i1, var1071=java.util.BitSet, var947=$r3, var2059=i4, var2599=i0, var189=org.hibernate.internal.util.StringHelper, var2888=$i2}
; {r2=var222, null_type=var1438, r1=var3338, i1=var1451, java.util.BitSet=var1071, $r3=var947, i4=var2059, i0=var2599, org.hibernate.internal.util.StringHelper=var189, $i2=var2888}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i1 := @parameter2: int;	$r3 = new java.util.BitSet;	specialinvoke $r3.<java.util.BitSet: void <init>()>();	i4 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= i0 goto $i2 = staticinvoke <org.hibernate.internal.util.StringHelper: int firstIndexOfChar(java.lang.String,java.util.BitSet,int)>(r2, $r3, i1);	$i2 = staticinvoke <org.hibernate.internal.util.StringHelper: int firstIndexOfChar(java.lang.String,java.util.BitSet,int)>(r2, $r3, i1);	return $i2
;block_num 3