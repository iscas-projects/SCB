(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3973 0)
(declare-sort var3517 0)
(declare-sort var1646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getColumnIterator/336238768 (var1646) Iterator)
(declare-fun cast-from-var3973-to-var1646 (var3973) var1646)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3973 var3973)
(declare-const null-var3517 var3517)
(declare-const var791 var3973) ; Statement: r1 := @this: org.hibernate.mapping.PrimaryKey 
(assert (not (= var791 null-var3973)))
(declare-const var2400 var3517) ; Statement: r6 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var2400 null-var3517)))
(define-const var1845 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1845 "primary key (")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("primary key (") 
(declare-const var1845!1 String)
(assert (= var1845!1 "primary key ("))
(assert true)
(define-const var2203 Iterator (getColumnIterator/336238768 (cast-from-var3973-to-var1646 var791))) ; Statement: r2 = virtualinvoke r1.<org.hibernate.mapping.PrimaryKey: java.util.Iterator getColumnIterator()>() 
(assert true) ; Non Conditional
(define-const var2292 Bool (Iterator_hasNext/-1669924200 var2203)) ; Statement: $z1 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var2292 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2482 String (append/-1166366385 var1845!1 41)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1845!2 String)
(assert (str.prefixof var1845!1 var1845!2))
(assert true)
(define-const var1934 String (toString/-2075883882 var2482)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getColumnIterator/336238768=([org.hibernate.mapping.Constraint], java.util.Iterator), cast-from-var3973-to-var1646=([org.hibernate.mapping.PrimaryKey], org.hibernate.mapping.Constraint), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3973=org.hibernate.mapping.PrimaryKey, var791=r1, var3517=org.hibernate.dialect.Dialect, var2400=r6, var1845=$r0, var1646=org.hibernate.mapping.Constraint, var2203=r2, var2292=$z1, var2482=$r3, var1934=$r4}
; {org.hibernate.mapping.PrimaryKey=var3973, r1=var791, org.hibernate.dialect.Dialect=var3517, r6=var2400, $r0=var1845, org.hibernate.mapping.Constraint=var1646, r2=var2203, $z1=var2292, $r3=var2482, $r4=var1934}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.mapping.PrimaryKey;	r6 := @parameter0: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("primary key (");	r2 = virtualinvoke r1.<org.hibernate.mapping.PrimaryKey: java.util.Iterator getColumnIterator()>();	$z1 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3