(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var932 0)
(declare-sort var2933 0)
(declare-sort var2881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1044236738 (var932 String String String var2881) void)
(declare-const null-var932 var932)
(declare-const null-String String)
(declare-const null-var2881 var2881)
(declare-const var1152 var932) ; Statement: r0 := @this: org.hibernate.MappingNotFoundException 
(assert (not (= var1152 null-var932)))
(declare-const var3130 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3130 null-String)))
(declare-const var2149 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2149 null-String)))
(declare-const var3938 var2881) ; Statement: r8 := @parameter2: java.lang.Throwable 
(assert (not (= var3938 null-var2881)))
(define-const var1345 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1345)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1345!1 String)
(assert (= var1345!1 ""))
(assert true)
(define-const var2704 String (append/672562846 var1345!1 var3130)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1345!2 String)
(assert (= var1345!2 (str.++ var1345!1 var3130)))
(assert true)
(define-const var2965 String (append/672562846 var2704 ": ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2704!1 String)
(assert (= var2704!1 (str.++ var2704 ": ")))
(assert true)
(define-const var2324 String (append/672562846 var2965 var2149)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2965!1 String)
(assert (= var2965!1 (str.++ var2965 var2149)))
(assert true)
(define-const var2203 String (append/672562846 var2324 " not found")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found") 
(declare-const var2324!1 String)
(assert (= var2324!1 (str.++ var2324 " not found")))
(assert true)
(define-const var1650 String (toString/-2075883882 var2203)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1044236738 var1152 var1650 var3130 var2149 var3938)) ; Statement: specialinvoke r0.<org.hibernate.MappingNotFoundException: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.Throwable)>($r9, r2, r4, r8) 

(declare-const var1152!1 var932)
(declare-const var1650!1 String)
(declare-const var3130!1 String)
(declare-const var2149!1 String)
(declare-const var3938!1 var2881)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1044236738=([org.hibernate.MappingNotFoundException, java.lang.String, java.lang.String, java.lang.String, java.lang.Throwable], void)}
; {var932=org.hibernate.MappingNotFoundException, var1152=r0, var3130=r2, var2933=null_type, var2149=r4, var2881=java.lang.Throwable, var3938=r8, var1345=$r1, var2704=$r3, var2965=$r5, var2324=$r6, var2203=$r7, var1650=$r9}
; {org.hibernate.MappingNotFoundException=var932, r0=var1152, r2=var3130, null_type=var2933, r4=var2149, java.lang.Throwable=var2881, r8=var3938, $r1=var1345, $r3=var2704, $r5=var2965, $r6=var2324, $r7=var2203, $r9=var1650}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.MappingNotFoundException;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.Throwable;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.MappingNotFoundException: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.Throwable)>($r9, r2, r4, r8);	return
;block_num 1