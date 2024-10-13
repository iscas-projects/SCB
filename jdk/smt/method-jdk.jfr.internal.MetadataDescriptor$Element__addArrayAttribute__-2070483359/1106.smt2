(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1246 0)
(declare-sort var2606 0)
(declare-sort var3794 0)
(declare-sort var1887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3794) ClassObject)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1887-init () var1887)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1247810213 (var1887 String) void)
(declare-const null-var1246 var1246)
(declare-const null-String String)
(declare-const null-var3794 var3794)
(declare-const var1881 var1246) ; Statement: r5 := @this: jdk.jfr.internal.MetadataDescriptor$Element 
(assert (not (= var1881 null-var1246)))
(declare-const var2533 var1246) ; Statement: r76 := @parameter0: jdk.jfr.internal.MetadataDescriptor$Element 
(assert (not (= var2533 null-var1246)))
(declare-const var2338 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var2338 null-String)))
(declare-const var923 var3794) ; Statement: r0 := @parameter2: java.lang.Object 
(assert (not (= var923 null-var3794)))
(assert true)
(define-const var2370 ClassObject (getClass/1258963082 var923)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1558 ClassObject (getComponentType/1960034130 var2370)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.Class getComponentType()>() 
(assert true)
(define-const var3819 String (getName/-1958580599 var1558)) ; Statement: r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(define-const var1896 Int (- 1)) ; Statement: b15 = -1 
(assert true)
(define-const var1211 Int (hashCode/-467973558 var3819)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1325958191: goto $z9 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z8 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b15) {     case 0: goto $r62 = (int[]) r0;     case 1: goto $r55 = (long[]) r0;     case 2: goto $r48 = (float[]) r0;     case 3: goto $r41 = (double[]) r0;     case 4: goto $r34 = (short[]) r0;     case 5: goto $r27 = (char[]) r0;     case 6: goto $r20 = (byte[]) r0;     case 7: goto $r13 = (boolean[]) r0;     case 8: goto $r4 = (java.lang.String[]) r0;     default: goto $r70 = new java.lang.InternalError; }; } 
(assert (and (not (= var1211 1195259493)) (and (not (= var1211 109413500)) (and (not (= var1211 97526364)) (and (not (= var1211 64711720)) (and (not (= var1211 3327612)) (and (not (= var1211 3052374)) (and (not (= var1211 3039496)) (and (not (= var1211 104431)) (and (not (= var1211 (- 1325958191))) true)))))))))) ; Intersect: Negate: Cond: $i0 == 1195259493   and Intersect: Negate: Cond: $i0 == 109413500   and Intersect: Negate: Cond: $i0 == 97526364   and Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == 3327612   and Intersect: Negate: Cond: $i0 == 3052374   and Intersect: Negate: Cond: $i0 == 3039496   and Intersect: Negate: Cond: $i0 == 104431   and Intersect: Negate: Cond: $i0 == -1325958191   and Non Conditional         
 ; Statement: tableswitch(b15) {     case 0: goto $r62 = (int[]) r0;     case 1: goto $r55 = (long[]) r0;     case 2: goto $r48 = (float[]) r0;     case 3: goto $r41 = (double[]) r0;     case 4: goto $r34 = (short[]) r0;     case 5: goto $r27 = (char[]) r0;     case 6: goto $r20 = (byte[]) r0;     case 7: goto $r13 = (boolean[]) r0;     case 8: goto $r4 = (java.lang.String[]) r0;     default: goto $r70 = new java.lang.InternalError; } 
(assert (and (not (= var1896 8)) (and (not (= var1896 7)) (and (not (= var1896 6)) (and (not (= var1896 5)) (and (not (= var1896 4)) (and (not (= var1896 3)) (and (not (= var1896 2)) (and (not (= var1896 1)) (and (not (= var1896 0)) true)))))))))) ; Intersect: Negate: Cond: b15 == 8   and Intersect: Negate: Cond: b15 == 7   and Intersect: Negate: Cond: b15 == 6   and Intersect: Negate: Cond: b15 == 5   and Intersect: Negate: Cond: b15 == 4   and Intersect: Negate: Cond: b15 == 3   and Intersect: Negate: Cond: b15 == 2   and Intersect: Negate: Cond: b15 == 1   and Intersect: Negate: Cond: b15 == 0   and Non Conditional         
(define-const var906 var1887 var1887-init) ; Statement: $r70 = new java.lang.InternalError 
(define-const var49 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var49)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var49!1 String)
(assert (= var49!1 ""))
(assert true)
(define-const var2467 String (append/672562846 var49!1 "Array type of ")) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array type of ") 
(declare-const var49!2 String)
(assert (= var49!2 (str.++ var49!1 "Array type of ")))
(assert true)
(define-const var1123 String (append/672562846 var2467 var3819)) ; Statement: $r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2467!1 String)
(assert (= var2467!1 (str.++ var2467 var3819)))
(assert true)
(define-const var3213 String (append/672562846 var1123 " is not supported")) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported") 
(declare-const var1123!1 String)
(assert (= var1123!1 (str.++ var1123 " is not supported")))
(assert true)
(define-const var1846 String (toString/-2075883882 var3213)) ; Statement: $r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1247810213 var906 var1846)) ; Statement: specialinvoke $r70.<java.lang.InternalError: void <init>(java.lang.String)>($r75) 

(declare-const var906!1 var1887)
(declare-const var1846!1 String)
 ; Statement: throw $r70 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), getComponentType/1960034130=([java.lang.Class], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1887-init=([], java.lang.InternalError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1247810213=([java.lang.InternalError, java.lang.String], void)}
; {var1246=jdk.jfr.internal.MetadataDescriptor$Element, var1881=r5, var2533=r76, var2338=r7, var2606=null_type, var3794=java.lang.Object, var923=r0, var2370=$r1, var1558=$r2, var3819=r3, var1896=b15, var1211=$i0, var1887=java.lang.InternalError, var906=$r70, var49=$r71, var2467=$r72, var1123=$r73, var3213=$r74, var1846=$r75}
; {jdk.jfr.internal.MetadataDescriptor$Element=var1246, r5=var1881, r76=var2533, r7=var2338, null_type=var2606, java.lang.Object=var3794, r0=var923, $r1=var2370, $r2=var1558, r3=var3819, b15=var1896, $i0=var1211, java.lang.InternalError=var1887, $r70=var906, $r71=var49, $r72=var2467, $r73=var1123, $r74=var3213, $r75=var1846}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.jfr.internal.MetadataDescriptor$Element;	r76 := @parameter0: jdk.jfr.internal.MetadataDescriptor$Element;	r7 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.Object;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.Class getComponentType()>();	r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	b15 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1325958191: goto $z9 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("double");     case 104431: goto $z8 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("int");     case 3039496: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("byte");     case 3052374: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("char");     case 3327612: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("long");     case 64711720: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     case 97526364: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("float");     case 109413500: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("short");     case 1195259493: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");     default: goto tableswitch(b15) {     case 0: goto $r62 = (int[]) r0;     case 1: goto $r55 = (long[]) r0;     case 2: goto $r48 = (float[]) r0;     case 3: goto $r41 = (double[]) r0;     case 4: goto $r34 = (short[]) r0;     case 5: goto $r27 = (char[]) r0;     case 6: goto $r20 = (byte[]) r0;     case 7: goto $r13 = (boolean[]) r0;     case 8: goto $r4 = (java.lang.String[]) r0;     default: goto $r70 = new java.lang.InternalError; }; };	tableswitch(b15) {     case 0: goto $r62 = (int[]) r0;     case 1: goto $r55 = (long[]) r0;     case 2: goto $r48 = (float[]) r0;     case 3: goto $r41 = (double[]) r0;     case 4: goto $r34 = (short[]) r0;     case 5: goto $r27 = (char[]) r0;     case 6: goto $r20 = (byte[]) r0;     case 7: goto $r13 = (boolean[]) r0;     case 8: goto $r4 = (java.lang.String[]) r0;     default: goto $r70 = new java.lang.InternalError; };	$r70 = new java.lang.InternalError;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array type of ");	$r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported");	$r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r70.<java.lang.InternalError: void <init>(java.lang.String)>($r75);	throw $r70
;block_num 3