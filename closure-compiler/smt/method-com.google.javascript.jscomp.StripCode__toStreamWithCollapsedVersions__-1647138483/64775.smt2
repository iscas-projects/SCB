(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1548 0)
(declare-sort var1514 0)
(declare-sort var3283 0)
(declare-sort var716 0)
(declare-sort var3203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1514-init () var1514)
(declare-fun <init>/-325640736 (var1514) void)
(declare-fun add/1770215592 (var1514 var3283) Bool)
(declare-fun cast-from-String-to-var3283 (String) var3283)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun stream/-1288525013 (var3203) var716)
(declare-fun cast-from-var1514-to-var3203 (var1514) var3203)
(declare-const null-String String)
(declare-const var3011 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3011 null-String)))
(define-const var2862 var1514 var1514-init) ; Statement: $r5 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2862)) ; Statement: specialinvoke $r5.<java.util.ArrayList: void <init>()>() 

(declare-const var2862!1 var1514)
(assert true)
;(assert (add/1770215592 var2862!1 (cast-from-String-to-var3283 var3011))) ; Statement: virtualinvoke $r5.<java.util.ArrayList: boolean add(java.lang.Object)>(r1) 

(declare-const var2862!2 var1514)
(declare-const var3011!1 String)
(assert true)
(define-const var2137 (Array Int Int) (toCharArray/415275702 var3011!1)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var2992 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2823 Int (getLength-Arr-Int-1 var2137)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i2 >= $i0 goto $r3 = virtualinvoke $r5.<java.util.ArrayList: java.util.stream.Stream stream()>() 
(assert (>= var2992 var2823)) ; Cond: i2 >= $i0 
(assert true)
(define-const var3367 var716 (stream/-1288525013 (cast-from-var1514-to-var3203 var2862!2))) ; Statement: $r3 = virtualinvoke $r5.<java.util.ArrayList: java.util.stream.Stream stream()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1514-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), add/1770215592=([java.util.ArrayList, java.lang.Object], boolean), cast-from-String-to-var3283=([java.lang.String], java.lang.Object), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var1514-to-var3203=([java.util.ArrayList], java.util.Collection)}
; {var3011=r1, var1548=null_type, var1514=java.util.ArrayList, var2862=$r5, var3283=java.lang.Object, var2137=r2, var2992=i2, var2823=$i0, var716=java.util.stream.Stream, var3203=java.util.Collection, var3367=$r3}
; {r1=var3011, null_type=var1548, java.util.ArrayList=var1514, $r5=var2862, java.lang.Object=var3283, r2=var2137, i2=var2992, $i0=var2823, java.util.stream.Stream=var716, java.util.Collection=var3203, $r3=var3367}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r5 = new java.util.ArrayList;	specialinvoke $r5.<java.util.ArrayList: void <init>()>();	virtualinvoke $r5.<java.util.ArrayList: boolean add(java.lang.Object)>(r1);	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i2 = 0;	$i0 = lengthof r2;	if i2 >= $i0 goto $r3 = virtualinvoke $r5.<java.util.ArrayList: java.util.stream.Stream stream()>();	$r3 = virtualinvoke $r5.<java.util.ArrayList: java.util.stream.Stream stream()>();	return $r3
;block_num 3