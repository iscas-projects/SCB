(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1412 0)
(declare-sort var3196 0)
(declare-sort var516 0)
(declare-sort var3645 0)
(declare-sort var2956 0)
(declare-sort var2324 0)
(declare-sort var998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createAdapterFactory/-190254991 (var2324 Int Int) var2956)
(declare-fun var516_add/328494887 (var516 var998) Bool)
(declare-fun cast-from-var2956-to-var998 (var2956) var998)
(declare-const null-var1412 var1412)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var516 var516)
(declare-const var3645-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var2956 var2956)
(declare-const var2324-DATE var2324)
(declare-const var3645-TIMESTAMP_DATE_TYPE var2324)
(declare-const var3645-DATE_DATE_TYPE var2324)
(declare-const var3803 var1412) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var3803 null-var1412)))
(declare-const var2594 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2594 null-String)))
(declare-const var3818 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3818 null-Int)))
(declare-const var31 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var31 null-Int)))
(declare-const var2183 var516) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var2183 null-var516)))
(define-const var3928 Bool var3645-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var3251 var2956 null-var2956) ; Statement: r10 = null 
(define-const var1492 var2956 null-var2956) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (= var2594 null-String)) ; Cond: r0 == null 
 ; Statement: if i0 == 2 goto return 
(assert (not (= var3818 2))) ; Negate: Cond: i0 == 2  
 ; Statement: if i1 == 2 goto return 
(assert (not (= var31 2))) ; Negate: Cond: i1 == 2  
(define-const var177 var2324 var2324-DATE) ; Statement: $r1 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE> 
(assert true)
(define-const var528 var2956 (createAdapterFactory/-190254991 var177 var3818 var31)) ; Statement: r12 = virtualinvoke $r1.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1) 
 ; Statement: if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 
(assert (not (= (ite var3928 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var79 var2324 var3645-TIMESTAMP_DATE_TYPE) ; Statement: $r3 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType TIMESTAMP_DATE_TYPE> 
(assert true)
(define-const var3251!1 var2956 (createAdapterFactory/-190254991 var79 var3818 var31)) ; Statement: r10 = virtualinvoke $r3.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1) 
(define-const var1826 var2324 var3645-DATE_DATE_TYPE) ; Statement: $r4 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE_DATE_TYPE> 
(assert true)
(define-const var1492!1 var2956 (createAdapterFactory/-190254991 var1826 var3818 var31)) ; Statement: r11 = virtualinvoke $r4.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1) 
 ; Statement: goto [?= interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12)] 
(assert true) ; Non Conditional
;(assert (var516_add/328494887 var2183 (cast-from-var2956-to-var998 var528))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 

(declare-const var2183!1 var516)
(declare-const var528!1 var2956)
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var3928 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {createAdapterFactory/-190254991=([com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, int, int], com.google.gson.TypeAdapterFactory), var516_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2956-to-var998=([com.google.gson.TypeAdapterFactory], java.lang.Object)}
; {var1412=com.google.gson.GsonBuilder, var3803=r9, var2594=r0, var3196=null_type, var3818=i0, var31=i1, var516=java.util.List, var2183=r2, var3645=com.google.gson.internal.sql.SqlTypesSupport, var3928=z0, var2956=com.google.gson.TypeAdapterFactory, var3251=r10, var1492=r11, var2324=com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, var177=$r1, var528=r12, var79=$r3, var1826=$r4, var998=java.lang.Object}
; {com.google.gson.GsonBuilder=var1412, r9=var3803, r0=var2594, null_type=var3196, i0=var3818, i1=var31, java.util.List=var516, r2=var2183, com.google.gson.internal.sql.SqlTypesSupport=var3645, z0=var3928, com.google.gson.TypeAdapterFactory=var2956, r10=var3251, r11=var1492, com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType=var2324, $r1=var177, r12=var528, $r3=var79, $r4=var1826, java.lang.Object=var998}
;seq 
;cnt {}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	if i0 == 2 goto return;	if i1 == 2 goto return;	$r1 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE>;	r12 = virtualinvoke $r1.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1);	if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	$r3 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType TIMESTAMP_DATE_TYPE>;	r10 = virtualinvoke $r3.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1);	$r4 = <com.google.gson.internal.sql.SqlTypesSupport: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE_DATE_TYPE>;	r11 = virtualinvoke $r4.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1);	goto [?= interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12)];	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	if z0 == 0 goto return;	return
;block_num 7