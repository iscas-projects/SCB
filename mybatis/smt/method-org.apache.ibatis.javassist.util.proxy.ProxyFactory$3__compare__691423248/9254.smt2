(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2054 0)
(declare-sort var2321 0)
(declare-sort var3147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2321_getKey/-33423493 (var2321) var3147)
(declare-fun cast-from-var3147-to-String (var3147) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var2054 var2054)
(declare-const null-var2321 var2321)
(declare-const var1118 var2054) ; Statement: r6 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory$3 
(assert (not (= var1118 null-var2054)))
(declare-const var3239 var2321) ; Statement: r0 := @parameter0: java.util.Map$Entry 
(assert (not (= var3239 null-var2321)))
(declare-const var417 var2321) ; Statement: r2 := @parameter1: java.util.Map$Entry 
(assert (not (= var417 null-var2321)))
(define-const var2011 var3147 (var2321_getKey/-33423493 var3239)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var1729 String (cast-from-var3147-to-String var2011)) ; Statement: $r5 = (java.lang.String) $r1 
(define-const var3524 var3147 (var2321_getKey/-33423493 var417)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var3268 String (cast-from-var3147-to-String var3524)) ; Statement: $r4 = (java.lang.String) $r3 
(assert true)
(define-const var2815 Int (compareTo/1411385946 var1729 var3268)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var1729 var3268)) (this<=other (str.<= var1729 var3268)) (compareRes (compareTo/1411385946 var1729 var3268))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2321_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var3147-to-String=([java.lang.Object], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var2054=org.apache.ibatis.javassist.util.proxy.ProxyFactory$3, var1118=r6, var2321=java.util.Map$Entry, var3239=r0, var417=r2, var3147=java.lang.Object, var2011=$r1, var1729=$r5, var3524=$r3, var3268=$r4, var2815=$i0}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory$3=var2054, r6=var1118, java.util.Map$Entry=var2321, r0=var3239, r2=var417, java.lang.Object=var3147, $r1=var2011, $r5=var1729, $r3=var3524, $r4=var3268, $i0=var2815}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory$3;	r0 := @parameter0: java.util.Map$Entry;	r2 := @parameter1: java.util.Map$Entry;	$r1 = interfaceinvoke r0.<java.util.Map$Entry: java.lang.Object getKey()>();	$r5 = (java.lang.String) $r1;	$r3 = interfaceinvoke r2.<java.util.Map$Entry: java.lang.Object getKey()>();	$r4 = (java.lang.String) $r3;	$i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	return $i0
;block_num 1