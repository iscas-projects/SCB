(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3547 0)
(declare-sort var1389 0)
(declare-sort var3001 0)
(declare-sort var701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3001_id/957508749 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var701 String) void)
(declare-fun cast-from-var3547-to-var701 (var3547) var701)
(declare-const null-var3547 var3547)
(declare-const null-String String)
(declare-const var1571 var3547) ; Statement: r0 := @this: org.omg.IOP.CodecFactoryPackage.UnknownEncoding 
(assert (not (= var1571 null-var3547)))
(declare-const var1793 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1793 null-String)))
(define-const var2472 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2472)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2472!1 String)
(assert (= var2472!1 ""))
(define-const var1272 String var3001_id/957508749) ; Statement: $r2 = staticinvoke <org.omg.IOP.CodecFactoryPackage.UnknownEncodingHelper: java.lang.String id()>() 
(assert true)
(define-const var1097 String (append/672562846 var2472!1 var1272)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2472!2 String)
(assert (= var2472!2 (str.++ var2472!1 var1272)))
(assert true)
(define-const var2103 String (append/672562846 var1097 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1097!1 String)
(assert (= var1097!1 (str.++ var1097 "  ")))
(assert true)
(define-const var772 String (append/672562846 var2103 var1793)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2103!1 String)
(assert (= var2103!1 (str.++ var2103 var1793)))
(assert true)
(define-const var3380 String (toString/-2075883882 var772)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var3547-to-var701 var1571) var3380)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var1571!1 var3547)
(declare-const var3380!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3001_id/957508749=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var3547-to-var701=([org.omg.IOP.CodecFactoryPackage.UnknownEncoding], org.omg.CORBA.UserException)}
; {var3547=org.omg.IOP.CodecFactoryPackage.UnknownEncoding, var1571=r0, var1793=r4, var1389=null_type, var2472=$r1, var3001=org.omg.IOP.CodecFactoryPackage.UnknownEncodingHelper, var1272=$r2, var1097=$r3, var2103=$r5, var772=$r6, var3380=$r7, var701=org.omg.CORBA.UserException}
; {org.omg.IOP.CodecFactoryPackage.UnknownEncoding=var3547, r0=var1571, r4=var1793, null_type=var1389, $r1=var2472, org.omg.IOP.CodecFactoryPackage.UnknownEncodingHelper=var3001, $r2=var1272, $r3=var1097, $r5=var2103, $r6=var772, $r7=var3380, org.omg.CORBA.UserException=var701}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.IOP.CodecFactoryPackage.UnknownEncoding;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.IOP.CodecFactoryPackage.UnknownEncodingHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1