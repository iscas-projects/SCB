(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2295 0)
(declare-sort var3966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2295 var2295)
(declare-const null-String String)
(declare-const var1627 var2295) ; Statement: r8 := @this: org.hibernate.dialect.InformixDialect 
(assert (not (= var1627 null-var2295)))
(declare-const var3815 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3815 null-String)))
(declare-const var2084 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2084 null-String)))
(define-const var2936 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2936 30)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30) 

(declare-const var2936!1 String)
(declare-const var898 Int)
(assert true)
(define-const var1495 String (append/672562846 var2936!1 " add constraint ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ") 
(declare-const var2936!2 String)
(assert (= var2936!2 (str.++ var2936!1 " add constraint ")))
(assert true)
(define-const var976 String (append/672562846 var1495 var2084)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1495!1 String)
(assert (= var1495!1 (str.++ var1495 var2084)))
(assert true)
(define-const var784 String (append/672562846 var976 " constraint ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" constraint ") 
(declare-const var976!1 String)
(assert (= var976!1 (str.++ var976 " constraint ")))
(assert true)
(define-const var84 String (append/672562846 var784 var3815)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var784!1 String)
(assert (= var784!1 (str.++ var784 var3815)))
(assert true)
(define-const var2796 String (toString/-2075883882 var84)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2295=org.hibernate.dialect.InformixDialect, var1627=r8, var3815=r4, var3966=null_type, var2084=r1, var2936=$r0, var898=30, var1495=$r2, var976=$r3, var784=$r5, var84=$r6, var2796=$r7}
; {org.hibernate.dialect.InformixDialect=var2295, r8=var1627, r4=var3815, null_type=var3966, r1=var2084, $r0=var2936, 30=var898, $r2=var1495, $r3=var976, $r5=var784, $r6=var84, $r7=var2796}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.dialect.InformixDialect;	r4 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(30);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" add constraint ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" constraint ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1