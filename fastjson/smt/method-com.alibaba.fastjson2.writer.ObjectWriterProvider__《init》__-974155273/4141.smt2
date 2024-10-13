(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3702 0)
(declare-sort var1002 0)
(declare-sort var518 0)
(declare-sort var1807 0)
(declare-sort var2102 0)
(declare-sort var1202 0)
(declare-sort var2511 0)
(declare-sort var775 0)
(declare-sort var128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var518) void)
(declare-fun cast-from-var3702-to-var518 (var3702) var518)
(declare-fun var1807-init () var1807)
(declare-fun <init>/-2175807 (var1807) void)
(declare-fun cast-from-var1807-to-var2102 (var1807) var2102)
(declare-fun cache/1823518751 (var3702) var2102)
(declare-fun cacheFieldBased/1823518751 (var3702) var2102)
(declare-fun mixInCache/1823518751 (var3702) var2102)
(declare-fun var1202-init () var1202)
(declare-fun <init>/-325640736 (var1202) void)
(declare-fun cast-from-var1202-to-var2511 (var1202) var2511)
(declare-fun modules/1823518751 (var3702) var2511)
(declare-fun init/1993894410 (var3702) void)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun creator/1823518751 (var3702) var775)
(declare-fun namingStrategy/1823518751 (var3702) var1002)
(declare-const null-var3702 var3702)
(declare-const null-var1002 var1002)
(declare-const null-var775 var775)
(declare-const var128-CREATOR String)
(declare-const var775-INSTANCE var775)
(declare-const var1910 var3702) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterProvider 
(assert (not (= var1910 null-var3702)))
(declare-const var1036 var1002) ; Statement: r6 := @parameter0: com.alibaba.fastjson2.PropertyNamingStrategy 
(assert (not (= var1036 null-var1002)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3702-to-var518 var1910))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1910!1 var3702)
(define-const var457 var1807 var1807-init) ; Statement: $r1 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var457)) ; Statement: specialinvoke $r1.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var457!1 var1807)
(declare-const var1910!2 var3702)
(assert (not (= var1910!2 null-var3702)))
(assert (= (cache/1823518751 var1910!2) (cast-from-var1807-to-var2102 var457!1))) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap cache> = $r1 
(define-const var3901 var1807 var1807-init) ; Statement: $r2 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var3901)) ; Statement: specialinvoke $r2.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var3901!1 var1807)
(declare-const var1910!3 var3702)
(assert (not (= var1910!3 null-var3702)))
(assert (= (cacheFieldBased/1823518751 var1910!3) (cast-from-var1807-to-var2102 var3901!1))) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap cacheFieldBased> = $r2 
(define-const var1207 var1807 var1807-init) ; Statement: $r3 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var1207)) ; Statement: specialinvoke $r3.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var1207!1 var1807)
(declare-const var1910!4 var3702)
(assert (not (= var1910!4 null-var3702)))
(assert (= (mixInCache/1823518751 var1910!4) (cast-from-var1807-to-var2102 var1207!1))) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap mixInCache> = $r3 
(define-const var2894 var1202 var1202-init) ; Statement: $r4 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2894)) ; Statement: specialinvoke $r4.<java.util.ArrayList: void <init>()>() 

(declare-const var2894!1 var1202)
(declare-const var1910!5 var3702)
(assert (not (= var1910!5 null-var3702)))
(assert (= (modules/1823518751 var1910!5) (cast-from-var1202-to-var2511 var2894!1))) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.List modules> = $r4 
(assert true)
;(assert (init/1993894410 var1910!5)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void init()>() 

(declare-const var1910!6 var3702)
(define-const var3012 var775 null-var775) ; Statement: r8 = null 
(define-const var2252 String var128-CREATOR) ; Statement: r5 = <com.alibaba.fastjson2.JSONFactory: java.lang.String CREATOR> 
(define-const var2621 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var318 Int (hashCode/-467973558 var2252)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1110092857: goto $z4 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("lambda");     case 96891: goto $z3 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("asm");     case 1085265597: goto $z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("reflect");     default: goto tableswitch(b1) {     case 0: goto r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE>;     case 1: goto r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE>;     case 2: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>;     default: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>; }; } 
(assert (and (not (= var318 1085265597)) (and (not (= var318 96891)) (and (not (= var318 (- 1110092857))) true)))) ; Intersect: Negate: Cond: $i0 == 1085265597   and Intersect: Negate: Cond: $i0 == 96891   and Intersect: Negate: Cond: $i0 == -1110092857   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE>;     case 1: goto r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE>;     case 2: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>;     default: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>; } 
(assert (and (= var2621 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var3012!1 var775 var775-INSTANCE) ; Statement: r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE> 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriterCreator creator> = r8] 
(assert true) ; Non Conditional
(declare-const var1910!7 var3702)
(assert (not (= var1910!7 null-var3702)))
(assert (= (creator/1823518751 var1910!7) var3012!1)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriterCreator creator> = r8 
(declare-const var1910!8 var3702)
(assert (not (= var1910!8 null-var3702)))
(assert (= (namingStrategy/1823518751 var1910!8) var1036)) ; Statement: r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.PropertyNamingStrategy namingStrategy> = r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3702-to-var518=([com.alibaba.fastjson2.writer.ObjectWriterProvider], java.lang.Object), var1807-init=([], java.util.concurrent.ConcurrentHashMap), <init>/-2175807=([java.util.concurrent.ConcurrentHashMap], void), cast-from-var1807-to-var2102=([java.util.concurrent.ConcurrentHashMap], java.util.concurrent.ConcurrentMap), cache/1823518751=([com.alibaba.fastjson2.writer.ObjectWriterProvider], java.util.concurrent.ConcurrentMap), cacheFieldBased/1823518751=([com.alibaba.fastjson2.writer.ObjectWriterProvider], java.util.concurrent.ConcurrentMap), mixInCache/1823518751=([com.alibaba.fastjson2.writer.ObjectWriterProvider], java.util.concurrent.ConcurrentMap), var1202-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1202-to-var2511=([java.util.ArrayList], java.util.List), modules/1823518751=([com.alibaba.fastjson2.writer.ObjectWriterProvider], java.util.List), init/1993894410=([com.alibaba.fastjson2.writer.ObjectWriterProvider], void), hashCode/-467973558=([java.lang.String], int), creator/1823518751=([com.alibaba.fastjson2.writer.ObjectWriterProvider], com.alibaba.fastjson2.writer.ObjectWriterCreator), namingStrategy/1823518751=([com.alibaba.fastjson2.writer.ObjectWriterProvider], com.alibaba.fastjson2.PropertyNamingStrategy)}
; {var3702=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1910=r0, var1002=com.alibaba.fastjson2.PropertyNamingStrategy, var1036=r6, var518=java.lang.Object, var1807=java.util.concurrent.ConcurrentHashMap, var457=$r1, var2102=java.util.concurrent.ConcurrentMap, var3901=$r2, var1207=$r3, var1202=java.util.ArrayList, var2894=$r4, var2511=java.util.List, var775=com.alibaba.fastjson2.writer.ObjectWriterCreator, var3012=r8, var128=com.alibaba.fastjson2.JSONFactory, var2252=r5, var2621=b1, var318=$i0}
; {com.alibaba.fastjson2.writer.ObjectWriterProvider=var3702, r0=var1910, com.alibaba.fastjson2.PropertyNamingStrategy=var1002, r6=var1036, java.lang.Object=var518, java.util.concurrent.ConcurrentHashMap=var1807, $r1=var457, java.util.concurrent.ConcurrentMap=var2102, $r2=var3901, $r3=var1207, java.util.ArrayList=var1202, $r4=var2894, java.util.List=var2511, com.alibaba.fastjson2.writer.ObjectWriterCreator=var775, r8=var3012, com.alibaba.fastjson2.JSONFactory=var128, r5=var2252, b1=var2621, $i0=var318}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.ObjectWriterProvider;	r6 := @parameter0: com.alibaba.fastjson2.PropertyNamingStrategy;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r1.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap cache> = $r1;	$r2 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r2.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap cacheFieldBased> = $r2;	$r3 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r3.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.concurrent.ConcurrentMap mixInCache> = $r3;	$r4 = new java.util.ArrayList;	specialinvoke $r4.<java.util.ArrayList: void <init>()>();	r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: java.util.List modules> = $r4;	virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: void init()>();	r8 = null;	r5 = <com.alibaba.fastjson2.JSONFactory: java.lang.String CREATOR>;	b1 = -1;	$i0 = virtualinvoke r5.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1110092857: goto $z4 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("lambda");     case 96891: goto $z3 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("asm");     case 1085265597: goto $z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("reflect");     default: goto tableswitch(b1) {     case 0: goto r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE>;     case 1: goto r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE>;     case 2: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>;     default: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>; }; };	tableswitch(b1) {     case 0: goto r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE>;     case 1: goto r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE>;     case 2: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>;     default: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>; };	r8 = <com.alibaba.fastjson2.writer.ObjectWriterCreator: com.alibaba.fastjson2.writer.ObjectWriterCreator INSTANCE>;	goto [?= r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriterCreator creator> = r8];	r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriterCreator creator> = r8;	r0.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.PropertyNamingStrategy namingStrategy> = r6;	return
;block_num 4