(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1113 0)
(declare-sort var2790 0)
(declare-sort var1252 0)
(declare-sort var1558 0)
(declare-sort var474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1252_smearedHash/949938630 (var2790) Int)
(declare-fun seekByKey/561244966 (var1113 var2790 Int) var1558)
(declare-fun seekByValue/-181543084 (var1113 var2790 Int) var1558)
(declare-fun var1558-init () var1558)
(declare-fun <init>/-1041822769 (var1558 var2790 Int var2790 Int) void)
(declare-fun delete/682370081 (var1113 var1558) void)
(declare-fun insert/1410813505 (var1113 var1558 var1558) void)
(declare-fun prevInKeyInsertionOrder/2142552766 (var1558) var1558)
(declare-fun nextInKeyInsertionOrder/2142552766 (var1558) var1558)
(declare-fun value/-1621335264 (var474) var2790)
(declare-fun cast-from-var1558-to-var474 (var1558) var474)
(declare-const null-var1113 var1113)
(declare-const null-var2790 var2790)
(declare-const null-Bool Bool)
(declare-const null-var1558 var1558)
(declare-const var3702 var1113) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap 
(assert (not (= var3702 null-var1113)))
(declare-const var2649 var2790) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2649 null-var2790)))
(declare-const var360 var2790) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var360 null-var2790)))
(declare-const var3080 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3080 null-Bool)))
(define-const var1260 Int (var1252_smearedHash/949938630 var2649)) ; Statement: i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r0) 
(define-const var24 Int (var1252_smearedHash/949938630 var360)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r1) 
(assert true)
(define-const var2607 var1558 (seekByKey/561244966 var3702 var2649 var1260)) ; Statement: r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByKey(java.lang.Object,int)>(r0, i0) 
 ; Statement: if r3 == null goto $r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1) 
(assert (= var2607 null-var1558)) ; Cond: r3 == null 
(assert true)
(define-const var1109 var1558 (seekByValue/-181543084 var3702 var360 var24)) ; Statement: $r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1) 
 ; Statement: if $r12 == null goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry 
(assert (= var1109 null-var1558)) ; Cond: $r12 == null 
(define-const var533 var1558 var1558-init) ; Statement: $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry 
(assert true)
;(assert (<init>/-1041822769 var533 var2649 var1260 var360 var24)) ; Statement: specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: void <init>(java.lang.Object,int,java.lang.Object,int)>(r0, i0, r1, i1) 

(declare-const var533!1 var1558)
(declare-const var2649!1 var2790)
(declare-const var1260!1 Int)
(declare-const var360!1 var2790)
(declare-const var24!1 Int)
 ; Statement: if r3 == null goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void insert(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry,com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>($r4, null) 
(assert (not (= var2607 null-var1558))) ; Negate: Cond: r3 == null  
(assert true)
;(assert (delete/682370081 var3702 var2607)) ; Statement: specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void delete(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>(r3) 

(declare-const var3702!1 var1113)
(declare-const var2607!1 var1558)
(assert true)
;(assert (insert/1410813505 var3702!1 var533!1 var2607!1)) ; Statement: specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void insert(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry,com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>($r4, r3) 

(declare-const var3702!2 var1113)
(declare-const var533!2 var1558)
(declare-const var2607!2 var1558)
(declare-const var2607!3 var1558)
(assert (not (= var2607!3 null-var1558)))
(assert (= (prevInKeyInsertionOrder/2142552766 var2607!3) null-var1558)) ; Statement: r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry prevInKeyInsertionOrder> = null 
(declare-const var2607!4 var1558)
(assert (not (= var2607!4 null-var1558)))
(assert (= (nextInKeyInsertionOrder/2142552766 var2607!4) null-var1558)) ; Statement: r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry nextInKeyInsertionOrder> = null 
(define-const var331 var2790 (value/-1621335264 (cast-from-var1558-to-var474 var2607!4))) ; Statement: $r5 = r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: java.lang.Object value> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1252_smearedHash/949938630=([java.lang.Object], int), seekByKey/561244966=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, java.lang.Object, int], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), seekByValue/-181543084=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, java.lang.Object, int], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), var1558-init=([], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), <init>/-1041822769=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry, java.lang.Object, int, java.lang.Object, int], void), delete/682370081=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry], void), insert/1410813505=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry, com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry], void), prevInKeyInsertionOrder/2142552766=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), nextInKeyInsertionOrder/2142552766=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry], com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry), value/-1621335264=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableEntry], java.lang.Object), cast-from-var1558-to-var474=([com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableEntry)}
; {var1113=com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap, var3702=r2, var2790=java.lang.Object, var2649=r0, var360=r1, var3080=z0, var1252=com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing, var1260=i0, var24=i1, var1558=com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry, var2607=r3, var1109=$r12, var533=$r4, var474=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableEntry, var331=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap=var1113, r2=var3702, java.lang.Object=var2790, r0=var2649, r1=var360, z0=var3080, com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing=var1252, i0=var1260, i1=var24, com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry=var1558, r3=var2607, $r12=var1109, $r4=var533, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableEntry=var474, $r5=var331}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap;	r0 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.Object;	z0 := @parameter2: boolean;	i0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r0);	i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Hashing: int smearedHash(java.lang.Object)>(r1);	r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByKey(java.lang.Object,int)>(r0, i0);	if r3 == null goto $r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1);	$r12 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry seekByValue(java.lang.Object,int)>(r1, i1);	if $r12 == null goto $r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry;	$r4 = new com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry;	specialinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: void <init>(java.lang.Object,int,java.lang.Object,int)>(r0, i0, r1, i1);	if r3 == null goto specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void insert(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry,com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>($r4, null);	specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void delete(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>(r3);	specialinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap: void insert(com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry,com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry)>($r4, r3);	r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry prevInKeyInsertionOrder> = null;	r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry nextInKeyInsertionOrder> = null;	$r5 = r3.<com.google.javascript.jscomp.jarjar.com.google.common.collect.HashBiMap$BiEntry: java.lang.Object value>;	return $r5
;block_num 4