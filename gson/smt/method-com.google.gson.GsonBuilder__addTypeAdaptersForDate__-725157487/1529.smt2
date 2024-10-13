(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1945 0)
(declare-sort var3111 0)
(declare-sort var3891 0)
(declare-sort var666 0)
(declare-sort var1166 0)
(declare-sort var733 0)
(declare-sort var88 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createAdapterFactory/-190254991 (var733 Int Int) var1166)
(declare-fun var3891_add/328494887 (var3891 var88) Bool)
(declare-fun cast-from-var1166-to-var88 (var1166) var88)
(declare-const null-var1945 var1945)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3891 var3891)
(declare-const var666-SUPPORTS_SQL_TYPES Bool)
(declare-const null-var1166 var1166)
(declare-const var733-DATE var733)
(declare-const var2626 var1945) ; Statement: r9 := @this: com.google.gson.GsonBuilder 
(assert (not (= var2626 null-var1945)))
(declare-const var3615 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3615 null-String)))
(declare-const var732 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var732 null-Int)))
(declare-const var2927 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2927 null-Int)))
(declare-const var354 var3891) ; Statement: r2 := @parameter3: java.util.List 
(assert (not (= var354 null-var3891)))
(define-const var2391 Bool var666-SUPPORTS_SQL_TYPES) ; Statement: z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES> 
(define-const var3480 var1166 null-var1166) ; Statement: r10 = null 
(define-const var1987 var1166 null-var1166) ; Statement: r11 = null 
 ; Statement: if r0 == null goto (branch) 
(assert (= var3615 null-String)) ; Cond: r0 == null 
 ; Statement: if i0 == 2 goto return 
(assert (not (= var732 2))) ; Negate: Cond: i0 == 2  
 ; Statement: if i1 == 2 goto return 
(assert (not (= var2927 2))) ; Negate: Cond: i1 == 2  
(define-const var154 var733 var733-DATE) ; Statement: $r1 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE> 
(assert true)
(define-const var1172 var1166 (createAdapterFactory/-190254991 var154 var732 var2927)) ; Statement: r12 = virtualinvoke $r1.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1) 
 ; Statement: if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 
(assert (= (ite var2391 1 0) 0)) ; Cond: z0 == 0 
;(assert (var3891_add/328494887 var354 (cast-from-var1166-to-var88 var1172))) ; Statement: interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12) 

(declare-const var354!1 var3891)
(declare-const var1172!1 var1166)
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var2391 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {createAdapterFactory/-190254991=([com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, int, int], com.google.gson.TypeAdapterFactory), var3891_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1166-to-var88=([com.google.gson.TypeAdapterFactory], java.lang.Object)}
; {var1945=com.google.gson.GsonBuilder, var2626=r9, var3615=r0, var3111=null_type, var732=i0, var2927=i1, var3891=java.util.List, var354=r2, var666=com.google.gson.internal.sql.SqlTypesSupport, var2391=z0, var1166=com.google.gson.TypeAdapterFactory, var3480=r10, var1987=r11, var733=com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType, var154=$r1, var1172=r12, var88=java.lang.Object}
; {com.google.gson.GsonBuilder=var1945, r9=var2626, r0=var3615, null_type=var3111, i0=var732, i1=var2927, java.util.List=var3891, r2=var354, com.google.gson.internal.sql.SqlTypesSupport=var666, z0=var2391, com.google.gson.TypeAdapterFactory=var1166, r10=var3480, r11=var1987, com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType=var733, $r1=var154, r12=var1172, java.lang.Object=var88}
;seq 
;cnt {}
;stmts r9 := @this: com.google.gson.GsonBuilder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	r2 := @parameter3: java.util.List;	z0 = <com.google.gson.internal.sql.SqlTypesSupport: boolean SUPPORTS_SQL_TYPES>;	r10 = null;	r11 = null;	if r0 == null goto (branch);	if i0 == 2 goto return;	if i1 == 2 goto return;	$r1 = <com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType DATE>;	r12 = virtualinvoke $r1.<com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType: com.google.gson.TypeAdapterFactory createAdapterFactory(int,int)>(i0, i1);	if z0 == 0 goto interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	interfaceinvoke r2.<java.util.List: boolean add(java.lang.Object)>(r12);	if z0 == 0 goto return;	return
;block_num 6