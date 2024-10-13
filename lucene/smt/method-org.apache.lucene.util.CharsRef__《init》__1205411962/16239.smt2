(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3148 0)
(declare-sort var1899 0)
(declare-sort var110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var110) void)
(declare-fun cast-from-var3148-to-var110 (var3148) var110)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun chars/-264564148 (var3148) (Array Int Int))
(declare-fun offset/-264564148 (var3148) Int)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun length/-264564148 (var3148) Int)
(declare-const null-var3148 var3148)
(declare-const null-String String)
(declare-const var3234 var3148) ; Statement: r0 := @this: org.apache.lucene.util.CharsRef 
(assert (not (= var3234 null-var3148)))
(declare-const var2678 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2678 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3148-to-var110 var3234))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3234!1 var3148)
(assert true)
(define-const var873 (Array Int Int) (toCharArray/415275702 var2678)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(declare-const var3234!2 var3148)
(assert (not (= var3234!2 null-var3148)))
(assert (= (chars/-264564148 var3234!2) var873)) ; Statement: r0.<org.apache.lucene.util.CharsRef: char[] chars> = $r2 
(declare-const var3234!3 var3148)
(assert (not (= var3234!3 null-var3148)))
(assert (= (offset/-264564148 var3234!3) 0)) ; Statement: r0.<org.apache.lucene.util.CharsRef: int offset> = 0 
(define-const var345 (Array Int Int) (chars/-264564148 var3234!3)) ; Statement: $r3 = r0.<org.apache.lucene.util.CharsRef: char[] chars> 
(define-const var922 Int (getLength-Arr-Int-1 var345)) ; Statement: $i0 = lengthof $r3 
(declare-const var3234!4 var3148)
(assert (not (= var3234!4 null-var3148)))
(assert (= (length/-264564148 var3234!4) var922)) ; Statement: r0.<org.apache.lucene.util.CharsRef: int length> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3148-to-var110=([org.apache.lucene.util.CharsRef], java.lang.Object), toCharArray/415275702=([java.lang.String], char[]), chars/-264564148=([org.apache.lucene.util.CharsRef], char[]), offset/-264564148=([org.apache.lucene.util.CharsRef], int), getLength-Arr-Int-1=([char[]], int), length/-264564148=([org.apache.lucene.util.CharsRef], int)}
; {var3148=org.apache.lucene.util.CharsRef, var3234=r0, var2678=r1, var1899=null_type, var110=java.lang.Object, var873=$r2, var345=$r3, var922=$i0}
; {org.apache.lucene.util.CharsRef=var3148, r0=var3234, r1=var2678, null_type=var1899, java.lang.Object=var110, $r2=var873, $r3=var345, $i0=var922}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: org.apache.lucene.util.CharsRef;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	r0.<org.apache.lucene.util.CharsRef: char[] chars> = $r2;	r0.<org.apache.lucene.util.CharsRef: int offset> = 0;	$r3 = r0.<org.apache.lucene.util.CharsRef: char[] chars>;	$i0 = lengthof $r3;	r0.<org.apache.lucene.util.CharsRef: int length> = $i0;	return
;block_num 1