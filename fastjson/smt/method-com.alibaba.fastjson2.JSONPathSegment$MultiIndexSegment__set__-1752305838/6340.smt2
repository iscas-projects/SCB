(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1402 0)
(declare-sort var2580 0)
(declare-sort var2752 0)
(declare-sort var721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var2580) var2580)
(declare-fun root/1029745399 (var2580) var2752)
(declare-fun var721-init () var721)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2752) ClassObject)
(declare-fun cast-from-var1402-to-var2752 (var1402) var2752)
(declare-fun append/-1031950772 (String var2752) String)
(declare-fun cast-from-ClassObject-to-var2752 (ClassObject) var2752)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var721 String) void)
(declare-const null-var1402 var1402)
(declare-const null-var2580 var2580)
(declare-const null-var2752 var2752)
(declare-const var1913 var1402) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment 
(assert (not (= var1913 null-var1402)))
(declare-const var798 var2580) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var798 null-var2580)))
(declare-const var876 var2752) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var876 null-var2752)))
(define-const var2831 var2580 (parent/1029745399 var798)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var2831 null-var2580)))) ; Negate: Cond: $r1 != null  
(define-const var707 var2752 (root/1029745399 var798)) ; Statement: $r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= r3 = $r12] 
(assert true) ; Non Conditional
(define-const var3928 var2752 var707) ; Statement: r3 = $r12 
(define-const var773 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var773 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var707 null-var2752)) ; Cond: $r12 == null 
(define-const var1608 var721 var721-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3176 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3176)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3176!1 String)
(assert (= var3176!1 ""))
(assert true)
(define-const var3869 String (append/672562846 var3176!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var3176!2 String)
(assert (= var3176!2 (str.++ var3176!1 "UnsupportedOperation ")))
(assert true)
(define-const var558 ClassObject (getClass/1258963082 (cast-from-var1402-to-var2752 var1913))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1358 String (append/-1031950772 var3869 (cast-from-ClassObject-to-var2752 var558))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var3869!1 String)
(assert (str.prefixof var3869 var3869!1))
(assert true)
(define-const var2001 String (toString/-2075883882 var1358)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1608 var2001)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var1608!1 var721)
(declare-const var2001!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var721-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1402-to-var2752=([com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2752=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1402=com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment, var1913=r6, var2580=com.alibaba.fastjson2.JSONPath$Context, var798=r0, var2752=java.lang.Object, var876=r11, var2831=$r1, var707=$r12, var3928=r3, var773=$z0, var721=com.alibaba.fastjson2.JSONException, var1608=$r4, var3176=$r5, var3869=$r8, var558=$r7, var1358=$r9, var2001=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment=var1402, r6=var1913, com.alibaba.fastjson2.JSONPath$Context=var2580, r0=var798, java.lang.Object=var2752, r11=var876, $r1=var2831, $r12=var707, r3=var3928, $z0=var773, com.alibaba.fastjson2.JSONException=var721, $r4=var1608, $r5=var3176, $r8=var3869, $r7=var558, $r9=var1358, $r10=var2001}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r11 := @parameter1: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= r3 = $r12];	r3 = $r12;	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto (branch);	if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 5