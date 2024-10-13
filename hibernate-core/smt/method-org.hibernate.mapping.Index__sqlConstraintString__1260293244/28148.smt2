(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2753 0)
(declare-sort var1109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getColumnIterator/504997087 (var2753) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2753 var2753)
(declare-const null-var1109 var1109)
(declare-const var425 var2753) ; Statement: r1 := @this: org.hibernate.mapping.Index 
(assert (not (= var425 null-var2753)))
(declare-const var896 var1109) ; Statement: r6 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var896 null-var1109)))
(define-const var2731 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2731 " index (")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(" index (") 
(declare-const var2731!1 String)
(assert (= var2731!1 " index ("))
(assert true)
(define-const var2315 Iterator (getColumnIterator/504997087 var425)) ; Statement: r2 = virtualinvoke r1.<org.hibernate.mapping.Index: java.util.Iterator getColumnIterator()>() 
(assert true) ; Non Conditional
(define-const var2555 Bool (Iterator_hasNext/-1669924200 var2315)) ; Statement: $z1 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var2555 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1617 String (append/-1166366385 var2731!1 41)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2731!2 String)
(assert (str.prefixof var2731!1 var2731!2))
(assert true)
(define-const var1405 String (toString/-2075883882 var1617)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getColumnIterator/504997087=([org.hibernate.mapping.Index], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2753=org.hibernate.mapping.Index, var425=r1, var1109=org.hibernate.dialect.Dialect, var896=r6, var2731=$r0, var2315=r2, var2555=$z1, var1617=$r3, var1405=$r4}
; {org.hibernate.mapping.Index=var2753, r1=var425, org.hibernate.dialect.Dialect=var1109, r6=var896, $r0=var2731, r2=var2315, $z1=var2555, $r3=var1617, $r4=var1405}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.Index;	r6 := @parameter0: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(" index (");	r2 = virtualinvoke r1.<org.hibernate.mapping.Index: java.util.Iterator getColumnIterator()>();	$z1 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3