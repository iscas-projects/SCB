(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var739 0)
(declare-sort var2059 0)
(declare-sort var3977 0)
(declare-sort var260 0)
(declare-sort var3306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3977_smearedHash/949938630 (var2059) Int)
(declare-fun seekByValue/-181543084 (var739 var2059 Int) var260)
(declare-fun seekByKey/561244966 (var739 var2059 Int) var260)
(declare-fun var3306-init () var3306)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2059) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3306 String) void)
(declare-const null-var739 var739)
(declare-const null-var2059 var2059)
(declare-const null-Bool Bool)
(declare-const null-var260 var260)
(declare-const var396 var739) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap 
(assert (not (= var396 null-var739)))
(declare-const var2205 var2059) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2205 null-var2059)))
(declare-const var1701 var2059) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1701 null-var2059)))
(declare-const var3425 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3425 null-Bool)))
(define-const var3224 Int (var3977_smearedHash/949938630 var2205)) ; Statement: i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r0) 
(define-const var923 Int (var3977_smearedHash/949938630 var1701)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r1) 
(assert true)
(define-const var3559 var260 (seekByValue/-181543084 var396 var2205 var3224)) ; Statement: r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r0, i0) 
(assert true)
(define-const var315 var260 (seekByKey/561244966 var396 var1701 var923)) ; Statement: r4 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByKey(java.lang.Object,int)>(r1, i1) 
 ; Statement: if r3 == null goto (branch) 
(assert (= var3559 null-var260)) ; Cond: r3 == null 
 ; Statement: if r4 == null goto (branch) 
(assert (not (= var315 null-var260))) ; Negate: Cond: r4 == null  
 ; Statement: if z0 != 0 goto (branch) 
(assert (not (not (= (ite var3425 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var1673 var3306 var3306-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2313 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2313)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2313!1 String)
(assert (= var2313!1 ""))
(assert true)
(define-const var1518 String (append/672562846 var2313!1 "key already present: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key already present: ") 
(declare-const var2313!2 String)
(assert (= var2313!2 (str.++ var2313!1 "key already present: ")))
(assert true)
(define-const var852 String (append/-1031950772 var1518 var1701)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1518!1 String)
(assert (str.prefixof var1518 var1518!1))
(assert true)
(define-const var1384 String (toString/-2075883882 var852)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1673 var1384)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1673!1 var3306)
(declare-const var1384!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3977_smearedHash/949938630=([java.lang.Object], int), seekByValue/-181543084=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, java.lang.Object, int], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), seekByKey/561244966=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, java.lang.Object, int], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), var3306-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var739=com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, var396=r2, var2059=java.lang.Object, var2205=r0, var1701=r1, var3425=z0, var3977=com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing, var3224=i0, var923=i1, var260=com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry, var3559=r3, var315=r4, var3306=java.lang.IllegalArgumentException, var1673=$r7, var2313=$r8, var1518=$r9, var852=$r10, var1384=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap=var739, r2=var396, java.lang.Object=var2059, r0=var2205, r1=var1701, z0=var3425, com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing=var3977, i0=var3224, i1=var923, com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry=var260, r3=var3559, r4=var315, java.lang.IllegalArgumentException=var3306, $r7=var1673, $r8=var2313, $r9=var1518, $r10=var852, $r11=var1384}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap;	r0 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Object;	z0 := @parameter2: boolean;	i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r0);	i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r1);	r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r0, i0);	r4 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByKey(java.lang.Object,int)>(r1, i1);	if r3 == null goto (branch);	if r4 == null goto (branch);	if z0 != 0 goto (branch);	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key already present: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 4