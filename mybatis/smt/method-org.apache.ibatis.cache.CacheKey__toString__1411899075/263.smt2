(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var140 0)
(declare-sort var51 0)
(declare-sort var3137 0)
(declare-sort var1048 0)
(declare-sort var3529 0)
(declare-sort var1344 0)
(declare-sort var568 0)
(declare-sort var2946 0)
(declare-sort var1149 0)
(declare-sort var2424 0)
(declare-sort var3877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var51-init () var51)
(declare-fun <init>/636888916 (var51 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun hashcode/-1986091413 (var140) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun add/953529365 (var51 String) var51)
(declare-fun checksum/-1986091413 (var140) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun updateList/-1986091413 (var140) var3137)
(declare-fun var3529_stream/-1288525013 (var3529) var1048)
(declare-fun cast-from-var3137-to-var3529 (var3137) var3529)
(declare-fun var568_bootstrap$/-1201365150 () var1344)
(declare-fun var1048_map/130902797 (var1048 var1344) var1048)
(declare-fun var2946_requireNonNull/-961817614 (var1149) var1149)
(declare-fun cast-from-var51-to-var1149 (var51) var1149)
(declare-fun var3877_bootstrap$/-998689044 (var51) var2424)
(declare-fun var1048_forEach/1037804367 (var1048 var2424) void)
(declare-fun toString/-2140704992 (var51) String)
(declare-const null-var140 var140)
(declare-const var1949 var140) ; Statement: r1 := @this: org.apache.ibatis.cache.CacheKey 
(assert (not (= var1949 null-var140)))
(define-const var814 var51 var51-init) ; Statement: $r0 = new java.util.StringJoiner 
(assert true)
;(assert (<init>/636888916 var814 (cast-from-String-to-String ":"))) ; Statement: specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(":") 

(declare-const var814!1 var51)
(declare-const var3497 String)
(define-const var336 Int (hashcode/-1986091413 var1949)) ; Statement: $i0 = r1.<org.apache.ibatis.cache.CacheKey: int hashcode> 
(define-const var3405 String (String_valueOf/1240665136 var336)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (add/953529365 var814!1 (cast-from-String-to-String var3405))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r2) 

(declare-const var814!2 var51)
(declare-const var3405!1 String)
(define-const var2776 Int (checksum/-1986091413 var1949)) ; Statement: $l1 = r1.<org.apache.ibatis.cache.CacheKey: long checksum> 
(define-const var2814 String (String_valueOf/-107395227 var2776)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l1) 
(assert true)
;(assert (add/953529365 var814!2 (cast-from-String-to-String var2814))) ; Statement: virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r3) 

(declare-const var814!3 var51)
(declare-const var2814!1 String)
(define-const var2268 var3137 (updateList/-1986091413 var1949)) ; Statement: $r4 = r1.<org.apache.ibatis.cache.CacheKey: java.util.List updateList> 
(define-const var3690 var1048 (var3529_stream/-1288525013 (cast-from-var3137-to-var3529 var2268))) ; Statement: $r6 = interfaceinvoke $r4.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var1004 var1344 var568_bootstrap$/-1201365150) ; Statement: $r5 = staticinvoke <org.apache.ibatis.cache.CacheKey$toString__15: java.util.function.Function bootstrap$()>() 
(define-const var3314 var1048 (var1048_map/130902797 var3690 var1004)) ; Statement: $r8 = interfaceinvoke $r6.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r5) 
;(assert (var2946_requireNonNull/-961817614 (cast-from-var51-to-var1149 var814!3))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r0) 

(declare-const var814!4 var51)
(define-const var2525 var2424 (var3877_bootstrap$/-998689044 var814!4)) ; Statement: $r7 = staticinvoke <org.apache.ibatis.cache.CacheKey$add__16: java.util.function.Consumer bootstrap$(java.util.StringJoiner)>($r0) 
;(assert (var1048_forEach/1037804367 var3314 var2525)) ; Statement: interfaceinvoke $r8.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r7) 

(declare-const var3314!1 var1048)
(declare-const var2525!1 var2424)
(assert true)
(define-const var1437 String (toString/-2140704992 var814!4)) ; Statement: $r9 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var51-init=([], java.util.StringJoiner), <init>/636888916=([java.util.StringJoiner, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), hashcode/-1986091413=([org.apache.ibatis.cache.CacheKey], int), String_valueOf/1240665136=([int], java.lang.String), add/953529365=([java.util.StringJoiner, java.lang.CharSequence], java.util.StringJoiner), checksum/-1986091413=([org.apache.ibatis.cache.CacheKey], long), String_valueOf/-107395227=([long], java.lang.String), updateList/-1986091413=([org.apache.ibatis.cache.CacheKey], java.util.List), var3529_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var3137-to-var3529=([java.util.List], java.util.Collection), var568_bootstrap$/-1201365150=([], java.util.function.Function), var1048_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var2946_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-var51-to-var1149=([java.util.StringJoiner], java.lang.Object), var3877_bootstrap$/-998689044=([java.util.StringJoiner], java.util.function.Consumer), var1048_forEach/1037804367=([java.util.stream.Stream, java.util.function.Consumer], void), toString/-2140704992=([java.util.StringJoiner], java.lang.String)}
; {var140=org.apache.ibatis.cache.CacheKey, var1949=r1, var51=java.util.StringJoiner, var814=$r0, var3497=":", var336=$i0, var3405=$r2, var2776=$l1, var2814=$r3, var3137=java.util.List, var2268=$r4, var1048=java.util.stream.Stream, var3529=java.util.Collection, var3690=$r6, var1344=java.util.function.Function, var568=org.apache.ibatis.cache.CacheKey$toString__15, var1004=$r5, var3314=$r8, var2946=java.util.Objects, var1149=java.lang.Object, var2424=java.util.function.Consumer, var3877=org.apache.ibatis.cache.CacheKey$add__16, var2525=$r7, var1437=$r9}
; {org.apache.ibatis.cache.CacheKey=var140, r1=var1949, java.util.StringJoiner=var51, $r0=var814, ":"=var3497, $i0=var336, $r2=var3405, $l1=var2776, $r3=var2814, java.util.List=var3137, $r4=var2268, java.util.stream.Stream=var1048, java.util.Collection=var3529, $r6=var3690, java.util.function.Function=var1344, org.apache.ibatis.cache.CacheKey$toString__15=var568, $r5=var1004, $r8=var3314, java.util.Objects=var2946, java.lang.Object=var1149, java.util.function.Consumer=var2424, org.apache.ibatis.cache.CacheKey$add__16=var3877, $r7=var2525, $r9=var1437}
;seq <java.lang.String: java.lang.String valueOf(int)>;	<java.lang.String: java.lang.String valueOf(long)>;	<java.util.StringJoiner: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r1 := @this: org.apache.ibatis.cache.CacheKey;	$r0 = new java.util.StringJoiner;	specialinvoke $r0.<java.util.StringJoiner: void <init>(java.lang.CharSequence)>(":");	$i0 = r1.<org.apache.ibatis.cache.CacheKey: int hashcode>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r2);	$l1 = r1.<org.apache.ibatis.cache.CacheKey: long checksum>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l1);	virtualinvoke $r0.<java.util.StringJoiner: java.util.StringJoiner add(java.lang.CharSequence)>($r3);	$r4 = r1.<org.apache.ibatis.cache.CacheKey: java.util.List updateList>;	$r6 = interfaceinvoke $r4.<java.util.List: java.util.stream.Stream stream()>();	$r5 = staticinvoke <org.apache.ibatis.cache.CacheKey$toString__15: java.util.function.Function bootstrap$()>();	$r8 = interfaceinvoke $r6.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r5);	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r0);	$r7 = staticinvoke <org.apache.ibatis.cache.CacheKey$add__16: java.util.function.Consumer bootstrap$(java.util.StringJoiner)>($r0);	interfaceinvoke $r8.<java.util.stream.Stream: void forEach(java.util.function.Consumer)>($r7);	$r9 = virtualinvoke $r0.<java.util.StringJoiner: java.lang.String toString()>();	return $r9
;block_num 1