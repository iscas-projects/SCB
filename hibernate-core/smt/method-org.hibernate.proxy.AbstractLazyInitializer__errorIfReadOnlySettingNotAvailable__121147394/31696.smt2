(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3160 0)
(declare-sort var2314 0)
(declare-sort var3100 0)
(declare-sort var1704 0)
(declare-sort var2000 0)
(declare-sort var1515 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun session/752502022 (var3160) var2314)
(declare-fun var3100-init () var3100)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/752502022 (var3160) String)
(declare-fun id/752502022 (var3160) var1704)
(declare-fun append/-1031950772 (String var2000) String)
(declare-fun cast-from-var1704-to-var2000 (var1704) var2000)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1749558638 (var3100 String) void)
(declare-fun cast-from-var3100-to-var1515 (var3100) var1515)
(declare-const null-var3160 var3160)
(declare-const null-var2314 var2314)
(declare-const var457 var3160) ; Statement: r0 := @this: org.hibernate.proxy.AbstractLazyInitializer 
(assert (not (= var457 null-var3160)))
(define-const var3708 var2314 (session/752502022 var457)) ; Statement: $r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: org.hibernate.engine.spi.SharedSessionContractImplementor session> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.proxy.AbstractLazyInitializer: org.hibernate.engine.spi.SharedSessionContractImplementor session> 
(assert (not (not (= var3708 null-var2314)))) ; Negate: Cond: $r1 != null  
(define-const var3656 var3100 var3100-init) ; Statement: $r24 = new org.hibernate.TransientObjectException 
(define-const var1183 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1183)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1183!1 String)
(assert (= var1183!1 ""))
(assert true)
(define-const var1334 String (append/672562846 var1183!1 "Proxy [")) ; Statement: $r16 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Proxy [") 
(declare-const var1183!2 String)
(assert (= var1183!2 (str.++ var1183!1 "Proxy [")))
(define-const var1179 String (entityName/752502022 var457)) ; Statement: $r15 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String entityName> 
(assert true)
(define-const var2102 String (append/672562846 var1334 var1179)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1334!1 String)
(assert (= var1334!1 (str.++ var1334 var1179)))
(assert true)
(define-const var452 String (append/672562846 var2102 "#")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2102!1 String)
(assert (= var2102!1 (str.++ var2102 "#")))
(define-const var1616 var1704 (id/752502022 var457)) ; Statement: $r18 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.io.Serializable id> 
(assert true)
(define-const var2508 String (append/-1031950772 var452 (cast-from-var1704-to-var2000 var1616))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var452!1 String)
(assert (str.prefixof var452 var452!1))
(assert true)
(define-const var833 String (append/672562846 var2508 "] is detached (i.e, session is null). The read-only/modifiable setting is only accessible when the proxy is associated with an open session.")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is detached (i.e, session is null). The read-only/modifiable setting is only accessible when the proxy is associated with an open session.") 
(declare-const var2508!1 String)
(assert (= var2508!1 (str.++ var2508 "] is detached (i.e, session is null). The read-only/modifiable setting is only accessible when the proxy is associated with an open session.")))
(assert true)
(define-const var3377 String (toString/-2075883882 var833)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1749558638 var3656 var3377)) ; Statement: specialinvoke $r24.<org.hibernate.TransientObjectException: void <init>(java.lang.String)>($r22) 

(declare-const var3656!1 var3100)
(declare-const var3377!1 String)
(define-const var3602 var1515 (cast-from-var3100-to-var1515 var3656!1)) ; Statement: $r27 = (java.lang.Throwable) $r24 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {session/752502022=([org.hibernate.proxy.AbstractLazyInitializer], org.hibernate.engine.spi.SharedSessionContractImplementor), var3100-init=([], org.hibernate.TransientObjectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.lang.String), id/752502022=([org.hibernate.proxy.AbstractLazyInitializer], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1704-to-var2000=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1749558638=([org.hibernate.TransientObjectException, java.lang.String], void), cast-from-var3100-to-var1515=([org.hibernate.TransientObjectException], java.lang.Throwable)}
; {var3160=org.hibernate.proxy.AbstractLazyInitializer, var457=r0, var2314=org.hibernate.engine.spi.SharedSessionContractImplementor, var3708=$r1, var3100=org.hibernate.TransientObjectException, var3656=$r24, var1183=$r23, var1334=$r16, var1179=$r15, var2102=$r17, var452=$r19, var1704=java.io.Serializable, var1616=$r18, var2000=java.lang.Object, var2508=$r20, var833=$r21, var3377=$r22, var1515=java.lang.Throwable, var3602=$r27}
; {org.hibernate.proxy.AbstractLazyInitializer=var3160, r0=var457, org.hibernate.engine.spi.SharedSessionContractImplementor=var2314, $r1=var3708, org.hibernate.TransientObjectException=var3100, $r24=var3656, $r23=var1183, $r16=var1334, $r15=var1179, $r17=var2102, $r19=var452, java.io.Serializable=var1704, $r18=var1616, java.lang.Object=var2000, $r20=var2508, $r21=var833, $r22=var3377, java.lang.Throwable=var1515, $r27=var3602}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.proxy.AbstractLazyInitializer;	$r1 = r0.<org.hibernate.proxy.AbstractLazyInitializer: org.hibernate.engine.spi.SharedSessionContractImplementor session>;	if $r1 != null goto $r2 = r0.<org.hibernate.proxy.AbstractLazyInitializer: org.hibernate.engine.spi.SharedSessionContractImplementor session>;	$r24 = new org.hibernate.TransientObjectException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Proxy [");	$r15 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.lang.String entityName>;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r18 = r0.<org.hibernate.proxy.AbstractLazyInitializer: java.io.Serializable id>;	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is detached (i.e, session is null). The read-only/modifiable setting is only accessible when the proxy is associated with an open session.");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.hibernate.TransientObjectException: void <init>(java.lang.String)>($r22);	$r27 = (java.lang.Throwable) $r24;	throw $r27
;block_num 2