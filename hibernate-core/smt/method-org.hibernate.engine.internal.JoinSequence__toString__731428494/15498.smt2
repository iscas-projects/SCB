(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2325 0)
(declare-sort var3091 0)
(declare-sort var1256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun rootJoinable/-1906196874 (var2325) var3091)
(declare-fun joins/-1906196874 (var2325) var1256)
(declare-fun var1256_iterator/-912451715 (var1256) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2325 var2325)
(declare-const null-var3091 var3091)
(declare-const var3149 var2325) ; Statement: r1 := @this: org.hibernate.engine.internal.JoinSequence 
(assert (not (= var3149 null-var2325)))
(define-const var2982 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2982)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2982!1 String)
(assert (= var2982!1 ""))
(assert true)
;(assert (append/672562846 var2982!1 "JoinSequence{")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JoinSequence{") 
(declare-const var2982!2 String)
(assert (= var2982!2 (str.++ var2982!1 "JoinSequence{")))
(define-const var1561 var3091 (rootJoinable/-1906196874 var3149)) ; Statement: $r2 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable> 
 ; Statement: if $r2 == null goto $r3 = r1.<org.hibernate.engine.internal.JoinSequence: java.util.List joins> 
(assert (= var1561 null-var3091)) ; Cond: $r2 == null 
(define-const var1082 var1256 (joins/-1906196874 var3149)) ; Statement: $r3 = r1.<org.hibernate.engine.internal.JoinSequence: java.util.List joins> 
(define-const var1242 Iterator (var1256_iterator/-912451715 var1082)) ; Statement: $r14 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3398 Bool (Iterator_hasNext/-1669924200 var1242)) ; Statement: $z0 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (= (ite var3398 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3417 String (append/-1166366385 var2982!2 125)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2982!3 String)
(assert (str.prefixof var2982!2 var2982!3))
(assert true)
(define-const var1585 String (toString/-2075883882 var3417)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), rootJoinable/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.persister.entity.Joinable), joins/-1906196874=([org.hibernate.engine.internal.JoinSequence], java.util.List), var1256_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2325=org.hibernate.engine.internal.JoinSequence, var3149=r1, var2982=$r0, var3091=org.hibernate.persister.entity.Joinable, var1561=$r2, var1256=java.util.List, var1082=$r3, var1242=$r14, var3398=$z0, var3417=$r4, var1585=$r5}
; {org.hibernate.engine.internal.JoinSequence=var2325, r1=var3149, $r0=var2982, org.hibernate.persister.entity.Joinable=var3091, $r2=var1561, java.util.List=var1256, $r3=var1082, $r14=var1242, $z0=var3398, $r4=var3417, $r5=var1585}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.internal.JoinSequence;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JoinSequence{");	$r2 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable>;	if $r2 == null goto $r3 = r1.<org.hibernate.engine.internal.JoinSequence: java.util.List joins>;	$r3 = r1.<org.hibernate.engine.internal.JoinSequence: java.util.List joins>;	$r14 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4