(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2823 0)
(declare-sort var3085 0)
(declare-sort var816 0)
(declare-sort var3098 0)
(declare-sort var443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var816_smearedHash/949938630 (var3085) Int)
(declare-fun seekByKey/561244966 (var2823 var3085 Int) var3098)
(declare-fun seekByValue/-181543084 (var2823 var3085 Int) var3098)
(declare-fun var3098-init () var3098)
(declare-fun <init>/-1041822769 (var3098 var3085 Int var3085 Int) void)
(declare-fun insert/1410813505 (var2823 var3098 var3098) void)
(declare-fun rehashIfNecessary/509778679 (var2823) void)
(declare-const null-var2823 var2823)
(declare-const null-var3085 var3085)
(declare-const null-Bool Bool)
(declare-const null-var3098 var3098)
(declare-const null-NullType var443)
(declare-const var122 var2823) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap 
(assert (not (= var122 null-var2823)))
(declare-const var1288 var3085) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1288 null-var3085)))
(declare-const var3477 var3085) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var3477 null-var3085)))
(declare-const var2918 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2918 null-Bool)))
(define-const var934 Int (var816_smearedHash/949938630 var1288)) ; Statement: i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r0) 
(define-const var136 Int (var816_smearedHash/949938630 var3477)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r1) 
(assert true)
(define-const var3953 var3098 (seekByKey/561244966 var122 var1288 var934)) ; Statement: r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByKey(java.lang.Object,int)>(r0, i0) 
 ; Statement: if r3 == null goto $r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1) 
(assert (= var3953 null-var3098)) ; Cond: r3 == null 
(assert true)
(define-const var2119 var3098 (seekByValue/-181543084 var122 var3477 var136)) ; Statement: $r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1) 
 ; Statement: if $r12 == null goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry 
(assert (= var2119 null-var3098)) ; Cond: $r12 == null 
(define-const var3213 var3098 var3098-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry 
(assert true)
;(assert (<init>/-1041822769 var3213 var1288 var934 var3477 var136)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: void <init>(java.lang.Object,int,java.lang.Object,int)>(r0, i0, r1, i1) 

(declare-const var3213!1 var3098)
(declare-const var1288!1 var3085)
(declare-const var934!1 Int)
(declare-const var3477!1 var3085)
(declare-const var136!1 Int)
 ; Statement: if r3 == null goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void insert(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry,com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>($r4, null) 
(assert (= var3953 null-var3098)) ; Cond: r3 == null 
(assert true)
;(assert (insert/1410813505 var122 var3213!1 null-var3098)) ; Statement: specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void insert(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry,com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>($r4, null) 

(declare-const var122!1 var2823)
(declare-const var3213!2 var3098)
(declare-const var1458 var443)
(assert true)
;(assert (rehashIfNecessary/509778679 var122!1)) ; Statement: specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void rehashIfNecessary()>() 

(declare-const var122!2 var2823)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var816_smearedHash/949938630=([java.lang.Object], int), seekByKey/561244966=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, java.lang.Object, int], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), seekByValue/-181543084=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, java.lang.Object, int], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), var3098-init=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), <init>/-1041822769=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry, java.lang.Object, int, java.lang.Object, int], void), insert/1410813505=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry, com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry], void), rehashIfNecessary/509778679=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap], void)}
; {var2823=com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, var122=r2, var3085=java.lang.Object, var1288=r0, var3477=r1, var2918=z0, var816=com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing, var934=i0, var136=i1, var3098=com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry, var3953=r3, var2119=$r12, var3213=$r4, var1458=null, var443=null_type}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap=var2823, r2=var122, java.lang.Object=var3085, r0=var1288, r1=var3477, z0=var2918, com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing=var816, i0=var934, i1=var136, com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry=var3098, r3=var3953, $r12=var2119, $r4=var3213, null=var1458, null_type=var443}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap;	r0 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Object;	z0 := @parameter2: boolean;	i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r0);	i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r1);	r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByKey(java.lang.Object,int)>(r0, i0);	if r3 == null goto $r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1);	$r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1);	if $r12 == null goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry;	$r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry;	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: void <init>(java.lang.Object,int,java.lang.Object,int)>(r0, i0, r1, i1);	if r3 == null goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void insert(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry,com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>($r4, null);	specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void insert(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry,com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>($r4, null);	specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void rehashIfNecessary()>();	return null
;block_num 4