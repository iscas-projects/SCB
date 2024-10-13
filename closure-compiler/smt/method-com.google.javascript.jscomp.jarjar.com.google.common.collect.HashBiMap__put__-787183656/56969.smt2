(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3363 0)
(declare-sort var1969 0)
(declare-sort var656 0)
(declare-sort var2784 0)
(declare-sort var314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var656_smearedHash/949938630 (var1969) Int)
(declare-fun seekByKey/561244966 (var3363 var1969 Int) var2784)
(declare-fun seekByValue/-181543084 (var3363 var1969 Int) var2784)
(declare-fun var314-init () var314)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1969) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var314 String) void)
(declare-const null-var3363 var3363)
(declare-const null-var1969 var1969)
(declare-const null-Bool Bool)
(declare-const null-var2784 var2784)
(declare-const var1846 var3363) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap 
(assert (not (= var1846 null-var3363)))
(declare-const var3782 var1969) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3782 null-var1969)))
(declare-const var1159 var1969) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1159 null-var1969)))
(declare-const var980 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var980 null-Bool)))
(define-const var2819 Int (var656_smearedHash/949938630 var3782)) ; Statement: i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r0) 
(define-const var3852 Int (var656_smearedHash/949938630 var1159)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r1) 
(assert true)
(define-const var3583 var2784 (seekByKey/561244966 var1846 var3782 var2819)) ; Statement: r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByKey(java.lang.Object,int)>(r0, i0) 
 ; Statement: if r3 == null goto $r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1) 
(assert (= var3583 null-var2784)) ; Cond: r3 == null 
(assert true)
(define-const var1884 var2784 (seekByValue/-181543084 var1846 var1159 var3852)) ; Statement: $r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1) 
 ; Statement: if $r12 == null goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry 
(assert (not (= var1884 null-var2784))) ; Negate: Cond: $r12 == null  
 ; Statement: if z0 == 0 goto $r6 = new java.lang.IllegalArgumentException 
(assert (= (ite var980 1 0) 0)) ; Cond: z0 == 0 
(define-const var1599 var314 var314-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var2171 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2171)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2171!1 String)
(assert (= var2171!1 ""))
(assert true)
(define-const var1443 String (append/672562846 var2171!1 "value already present: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value already present: ") 
(declare-const var2171!2 String)
(assert (= var2171!2 (str.++ var2171!1 "value already present: ")))
(assert true)
(define-const var3793 String (append/-1031950772 var1443 var1159)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1443!1 String)
(assert (str.prefixof var1443 var1443!1))
(assert true)
(define-const var2010 String (toString/-2075883882 var3793)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1599 var2010)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1599!1 var314)
(declare-const var2010!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var656_smearedHash/949938630=([java.lang.Object], int), seekByKey/561244966=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, java.lang.Object, int], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), seekByValue/-181543084=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, java.lang.Object, int], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), var314-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3363=com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, var1846=r2, var1969=java.lang.Object, var3782=r0, var1159=r1, var980=z0, var656=com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing, var2819=i0, var3852=i1, var2784=com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry, var3583=r3, var1884=$r12, var314=java.lang.IllegalArgumentException, var1599=$r6, var2171=$r7, var1443=$r8, var3793=$r9, var2010=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap=var3363, r2=var1846, java.lang.Object=var1969, r0=var3782, r1=var1159, z0=var980, com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing=var656, i0=var2819, i1=var3852, com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry=var2784, r3=var3583, $r12=var1884, java.lang.IllegalArgumentException=var314, $r6=var1599, $r7=var2171, $r8=var1443, $r9=var3793, $r10=var2010}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap;	r0 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Object;	z0 := @parameter2: boolean;	i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r0);	i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r1);	r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByKey(java.lang.Object,int)>(r0, i0);	if r3 == null goto $r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1);	$r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1);	if $r12 == null goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry;	if z0 == 0 goto $r6 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("value already present: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 4