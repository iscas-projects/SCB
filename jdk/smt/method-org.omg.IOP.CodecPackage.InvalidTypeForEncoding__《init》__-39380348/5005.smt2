(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var708 0)
(declare-sort var3298 0)
(declare-sort var2883 0)
(declare-sort var924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2883_id/1966307957 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1790025370 (var924 String) void)
(declare-fun cast-from-var708-to-var924 (var708) var924)
(declare-const null-var708 var708)
(declare-const null-String String)
(declare-const var483 var708) ; Statement: r0 := @this: org.omg.IOP.CodecPackage.InvalidTypeForEncoding 
(assert (not (= var483 null-var708)))
(declare-const var2268 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2268 null-String)))
(define-const var799 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var799)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var799!1 String)
(assert (= var799!1 ""))
(define-const var3296 String var2883_id/1966307957) ; Statement: $r2 = staticinvoke <org.omg.IOP.CodecPackage.InvalidTypeForEncodingHelper: java.lang.String id()>() 
(assert true)
(define-const var1875 String (append/672562846 var799!1 var3296)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var799!2 String)
(assert (= var799!2 (str.++ var799!1 var3296)))
(assert true)
(define-const var3332 String (append/672562846 var1875 "  ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1875!1 String)
(assert (= var1875!1 (str.++ var1875 "  ")))
(assert true)
(define-const var2582 String (append/672562846 var3332 var2268)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3332!1 String)
(assert (= var3332!1 (str.++ var3332 var2268)))
(assert true)
(define-const var1934 String (toString/-2075883882 var2582)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1790025370 (cast-from-var708-to-var924 var483) var1934)) ; Statement: specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7) 

(declare-const var483!1 var708)
(declare-const var1934!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2883_id/1966307957=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1790025370=([org.omg.CORBA.UserException, java.lang.String], void), cast-from-var708-to-var924=([org.omg.IOP.CodecPackage.InvalidTypeForEncoding], org.omg.CORBA.UserException)}
; {var708=org.omg.IOP.CodecPackage.InvalidTypeForEncoding, var483=r0, var2268=r4, var3298=null_type, var799=$r1, var2883=org.omg.IOP.CodecPackage.InvalidTypeForEncodingHelper, var3296=$r2, var1875=$r3, var3332=$r5, var2582=$r6, var1934=$r7, var924=org.omg.CORBA.UserException}
; {org.omg.IOP.CodecPackage.InvalidTypeForEncoding=var708, r0=var483, r4=var2268, null_type=var3298, $r1=var799, org.omg.IOP.CodecPackage.InvalidTypeForEncodingHelper=var2883, $r2=var3296, $r3=var1875, $r5=var3332, $r6=var2582, $r7=var1934, org.omg.CORBA.UserException=var924}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.omg.IOP.CodecPackage.InvalidTypeForEncoding;	r4 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.omg.IOP.CodecPackage.InvalidTypeForEncodingHelper: java.lang.String id()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.omg.CORBA.UserException: void <init>(java.lang.String)>($r7);	return
;block_num 1