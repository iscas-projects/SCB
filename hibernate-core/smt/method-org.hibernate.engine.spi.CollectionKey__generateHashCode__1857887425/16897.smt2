(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2501 0)
(declare-sort var2778 0)
(declare-sort var1629 0)
(declare-sort var2721 0)
(declare-sort var2929 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun role/-1152598343 (var2501) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun keyType/-1152598343 (var2501) var2778)
(declare-fun key/-1152598343 (var2501) var1629)
(declare-fun factory/-1152598343 (var2501) var2721)
(declare-fun var2778_getHashCode/735069886 (var2778 var2929 var2721) Int)
(declare-fun cast-from-var1629-to-var2929 (var1629) var2929)
(declare-const null-var2501 var2501)
(declare-const var3101 var2501) ; Statement: r0 := @this: org.hibernate.engine.spi.CollectionKey 
(assert (not (= var3101 null-var2501)))
(define-const var3261 String (role/-1152598343 var3101)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.CollectionKey: java.lang.String role> 
(assert true)
(define-const var3929 Int (hashCode/-467973558 var3261)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3654 Int (+ 629 var3929)) ; Statement: i3 = 629 + $i0 
(define-const var3772 Int (* 37 var3654)) ; Statement: $i2 = 37 * i3 
(define-const var1957 var2778 (keyType/-1152598343 var3101)) ; Statement: $r4 = r0.<org.hibernate.engine.spi.CollectionKey: org.hibernate.type.Type keyType> 
(define-const var2428 var1629 (key/-1152598343 var3101)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.CollectionKey: java.io.Serializable key> 
(define-const var1297 var2721 (factory/-1152598343 var3101)) ; Statement: $r2 = r0.<org.hibernate.engine.spi.CollectionKey: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var3915 Int (var2778_getHashCode/735069886 var1957 (cast-from-var1629-to-var2929 var2428) var1297)) ; Statement: $i1 = interfaceinvoke $r4.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r3, $r2) 
(define-const var640 Int (+ var3772 var3915)) ; Statement: i4 = $i2 + $i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {role/-1152598343=([org.hibernate.engine.spi.CollectionKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), keyType/-1152598343=([org.hibernate.engine.spi.CollectionKey], org.hibernate.type.Type), key/-1152598343=([org.hibernate.engine.spi.CollectionKey], java.io.Serializable), factory/-1152598343=([org.hibernate.engine.spi.CollectionKey], org.hibernate.engine.spi.SessionFactoryImplementor), var2778_getHashCode/735069886=([org.hibernate.type.Type, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], int), cast-from-var1629-to-var2929=([java.io.Serializable], java.lang.Object)}
; {var2501=org.hibernate.engine.spi.CollectionKey, var3101=r0, var3261=$r1, var3929=$i0, var3654=i3, var3772=$i2, var2778=org.hibernate.type.Type, var1957=$r4, var1629=java.io.Serializable, var2428=$r3, var2721=org.hibernate.engine.spi.SessionFactoryImplementor, var1297=$r2, var2929=java.lang.Object, var3915=$i1, var640=i4}
; {org.hibernate.engine.spi.CollectionKey=var2501, r0=var3101, $r1=var3261, $i0=var3929, i3=var3654, $i2=var3772, org.hibernate.type.Type=var2778, $r4=var1957, java.io.Serializable=var1629, $r3=var2428, org.hibernate.engine.spi.SessionFactoryImplementor=var2721, $r2=var1297, java.lang.Object=var2929, $i1=var3915, i4=var640}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.CollectionKey;	$r1 = r0.<org.hibernate.engine.spi.CollectionKey: java.lang.String role>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 629 + $i0;	$i2 = 37 * i3;	$r4 = r0.<org.hibernate.engine.spi.CollectionKey: org.hibernate.type.Type keyType>;	$r3 = r0.<org.hibernate.engine.spi.CollectionKey: java.io.Serializable key>;	$r2 = r0.<org.hibernate.engine.spi.CollectionKey: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$i1 = interfaceinvoke $r4.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r3, $r2);	i4 = $i2 + $i1;	return i4
;block_num 1