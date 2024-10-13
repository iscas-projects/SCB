(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1983045573 (var2217) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2217 var2217)
(declare-const var753 var2217) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item 
(assert (not (= var753 null-var2217)))
(declare-const var519 var2217) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item 
(assert (not (= var519 null-var2217)))
(define-const var3210 String (name/1983045573 var753)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item: java.lang.String name> 
(define-const var3126 String (name/1983045573 var519)) ; Statement: $r2 = r1.<jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item: java.lang.String name> 
(assert true)
(define-const var2113 Int (compareTo/1411385946 var3210 var3126)) ; Statement: i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var3210 var3126)) (this<=other (str.<= var3210 var3126)) (compareRes (compareTo/1411385946 var3210 var3126))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 != 0 goto return i0 
(assert (not (= var2113 0))) ; Cond: i0 != 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1983045573=([jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2217=jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item, var753=r0, var519=r1, var3210=$r3, var3126=$r2, var2113=i0}
; {jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item=var2217, r0=var753, r1=var519, $r3=var3210, $r2=var3126, i0=var2113}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item;	r1 := @parameter0: jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item;	$r3 = r0.<jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item: java.lang.String name>;	$r2 = r1.<jdk.internal.org.objectweb.asm.commons.SerialVersionUIDAdder$Item: java.lang.String name>;	i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	if i0 != 0 goto return i0;	return i0
;block_num 2