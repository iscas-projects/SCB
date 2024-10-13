(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var423 0)
(declare-sort var626 0)
(declare-sort var1552 0)
(declare-sort var3420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun directory/687146279 (var423) var1552)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun put/-1127386829 (var1552 var3420 var3420) var3420)
(declare-fun cast-from-String-to-var3420 (String) var3420)
(declare-fun cast-from-Int-to-var3420 (Int) var3420)
(declare-const null-var423 var423)
(declare-const null-String String)
(declare-const var3298 var423) ; Statement: r2 := @this: jdk.nashorn.internal.codegen.Namespace 
(assert (not (= var3298 null-var423)))
(declare-const var454 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var454 null-String)))
(assert true)
(define-const var1536 Int (length/-134980193 var454)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1272 Int (cast-from-Int-to-Int 32768)) ; Statement: $i4 = (int) 32768 
 ; Statement: if $i0 <= $i4 goto $r16 = r0 
(assert (not (<= var1536 var1272))) ; Negate: Cond: $i0 <= $i4  
(define-const var218 Int (cast-from-Int-to-Int 32768)) ; Statement: $i6 = (int) 32768 
(assert (not (and true (and (>= 0 0) (>= (str.len var454) var218) (>= var218 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), directory/687146279=([jdk.nashorn.internal.codegen.Namespace], java.util.HashMap), Int_valueOf/-1371140006=([int], java.lang.Integer), put/-1127386829=([java.util.HashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3420=([java.lang.String], java.lang.Object), cast-from-Int-to-var3420=([java.lang.Integer], java.lang.Object)}
; {var423=jdk.nashorn.internal.codegen.Namespace, var3298=r2, var454=r0, var626=null_type, var1536=$i0, var1272=$i4, var218=$i6, var1493=$r16, var726=r1, var574=r17, var1552=java.util.HashMap, var3841=$r3, var1371=$r4, var3420=java.lang.Object}
; {jdk.nashorn.internal.codegen.Namespace=var423, r2=var3298, r0=var454, null_type=var626, $i0=var1536, $i4=var1272, $i6=var218, $r16=var1493, r1=var726, r17=var574, java.util.HashMap=var1552, $r3=var3841, $r4=var1371, java.lang.Object=var3420}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.codegen.Namespace;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = (int) 32768;	if $i0 <= $i4 goto $r16 = r0;	$i6 = (int) 32768;	$r16 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i6);	goto [?= r1 = $r16];	r1 = $r16;	r17 = r2;	if r17 == null goto $r3 = r2.<jdk.nashorn.internal.codegen.Namespace: java.util.HashMap directory>;	$r3 = r2.<jdk.nashorn.internal.codegen.Namespace: java.util.HashMap directory>;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(0);	virtualinvoke $r3.<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r4);	return r1
;block_num 5