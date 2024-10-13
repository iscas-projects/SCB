(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3331 0)
(declare-sort var2312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/686119422 (var3331 String String String) void)
(declare-const null-var3331 var3331)
(declare-const null-String String)
(declare-const var464 var3331) ; Statement: r0 := @this: org.hibernate.MappingNotFoundException 
(assert (not (= var464 null-var3331)))
(declare-const var1031 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1031 null-String)))
(declare-const var270 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var270 null-String)))
(define-const var1241 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1241)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1241!1 String)
(assert (= var1241!1 ""))
(assert true)
(define-const var897 String (append/672562846 var1241!1 var1031)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1241!2 String)
(assert (= var1241!2 (str.++ var1241!1 var1031)))
(assert true)
(define-const var3018 String (append/672562846 var897 ": ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var897!1 String)
(assert (= var897!1 (str.++ var897 ": ")))
(assert true)
(define-const var628 String (append/672562846 var3018 var270)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3018!1 String)
(assert (= var3018!1 (str.++ var3018 var270)))
(assert true)
(define-const var2817 String (append/672562846 var628 " not found")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found") 
(declare-const var628!1 String)
(assert (= var628!1 (str.++ var628 " not found")))
(assert true)
(define-const var1105 String (toString/-2075883882 var2817)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/686119422 var464 var1105 var1031 var270)) ; Statement: specialinvoke r0.<org.hibernate.MappingNotFoundException: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r8, r2, r4) 

(declare-const var464!1 var3331)
(declare-const var1105!1 String)
(declare-const var1031!1 String)
(declare-const var270!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/686119422=([org.hibernate.MappingNotFoundException, java.lang.String, java.lang.String, java.lang.String], void)}
; {var3331=org.hibernate.MappingNotFoundException, var464=r0, var1031=r2, var2312=null_type, var270=r4, var1241=$r1, var897=$r3, var3018=$r5, var628=$r6, var2817=$r7, var1105=$r8}
; {org.hibernate.MappingNotFoundException=var3331, r0=var464, r2=var1031, null_type=var2312, r4=var270, $r1=var1241, $r3=var897, $r5=var3018, $r6=var628, $r7=var2817, $r8=var1105}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.MappingNotFoundException;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.hibernate.MappingNotFoundException: void <init>(java.lang.String,java.lang.String,java.lang.String)>($r8, r2, r4);	return
;block_num 1