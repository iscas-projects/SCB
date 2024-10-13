(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2127 0)
(declare-sort var2120 0)
(declare-sort var923 0)
(declare-sort var3427 0)
(declare-sort var2920 0)
(declare-sort var3725 0)
(declare-sort var1585 0)
(declare-sort var1810 0)
(declare-sort var3275 0)
(declare-sort var3361 0)
(declare-sort var2555 0)
(declare-sort var1724 0)
(declare-sort var1562 0)
(declare-sort var181 0)
(declare-sort var2608 0)
(declare-sort var2639 0)
(declare-sort var2241 0)
(declare-sort var2175 0)
(declare-sort var1764 0)
(declare-sort var1012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2608!class ClassObject)
(declare-fun <init>/-279557996 (var2120) void)
(declare-fun cast-from-var2127-to-var2120 (var2127) var2120)
(declare-fun var923-init () var923)
(declare-fun <init>/-2175807 (var923) void)
(declare-fun cast-from-var923-to-var3427 (var923) var3427)
(declare-fun cache/1117925919 (var2127) var3427)
(declare-fun cacheFieldBased/1117925919 (var2127) var3427)
(declare-fun tclHashCaches/1117925919 (var2127) var3427)
(declare-fun hashCache/1117925919 (var2127) var3427)
(declare-fun mixInCache/1117925919 (var2127) var3427)
(declare-fun var2920-init () var2920)
(declare-fun <init>/-1223797591 (var2920 Int) void)
(declare-fun autoTypeList/1117925919 (var2127) var2920)
(declare-fun typeConverts/1117925919 (var2127) var3427)
(declare-fun var3725-init () var3725)
(declare-fun <init>/-325640736 (var3725) void)
(declare-fun cast-from-var3725-to-var1585 (var3725) var1585)
(declare-fun modules/1117925919 (var2127) var1585)
(declare-fun autoTypeBeforeHandler/1117925919 (var2127) var1810)
(declare-fun autoTypeHandler/1117925919 (var2127) var3275)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var3361_sort/1847598381 ((Array Int Int)) void)
(declare-fun acceptHashCodes/1117925919 (var2127) (Array Int Int))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun var1724_put/1464166817 (var1724 var2120 var2120) var2120)
(declare-fun cast-from-var3427-to-var1724 (var3427) var1724)
(declare-fun cast-from-Int-to-var2120 (Int) var2120)
(declare-fun cast-from-var2555-to-var2120 (var2555) var2120)
(declare-fun cast-from-var1562-to-var2120 (var1562) var2120)
(declare-fun var181_getTypeName/1260098013 (ClassObject) String)
(declare-fun var2639_hashCode64/-647279352 (String) Int)
(declare-fun cast-from-var2241-to-var2120 (var2241) var2120)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun creator/1117925919 (var2127) var2175)
(declare-fun var1012-init () var1012)
(declare-fun <init>/-1380079531 (var1012 var2127) void)
(declare-fun var1585_add/328494887 (var1585 var2120) Bool)
(declare-fun cast-from-var1012-to-var2120 (var1012) var2120)
(declare-fun init/-16880630 (var2127) void)
(declare-const null-var2127 var2127)
(declare-const var2127-DEFAULT_AUTO_TYPE_BEFORE_HANDLER var1810)
(declare-const var2127-DEFAULT_AUTO_TYPE_HANDLER var3275)
(declare-const var2127-AUTO_TYPE_ACCEPT_LIST (Array Int String))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2555-TYPE_HASH_CODE Int)
(declare-const var2555-INSTANCE var2555)
(declare-const var1562-INSTANCE var1562)
(declare-const var2241-INSTANCE var2241)
(declare-const null-var2175 var2175)
(declare-const var1764-CREATOR String)
(declare-const var2175-INSTANCE var2175)
(declare-const var709 var2127) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderProvider 
(assert (not (= var709 null-var2127)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2127-to-var2120 var709))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var709!1 var2127)
(define-const var413 var923 var923-init) ; Statement: $r1 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var413)) ; Statement: specialinvoke $r1.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var413!1 var923)
(declare-const var709!2 var2127)
(assert (not (= var709!2 null-var2127)))
(assert (= (cache/1117925919 var709!2) (cast-from-var923-to-var3427 var413!1))) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap cache> = $r1 
(define-const var882 var923 var923-init) ; Statement: $r2 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var882)) ; Statement: specialinvoke $r2.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var882!1 var923)
(declare-const var709!3 var2127)
(assert (not (= var709!3 null-var2127)))
(assert (= (cacheFieldBased/1117925919 var709!3) (cast-from-var923-to-var3427 var882!1))) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap cacheFieldBased> = $r2 
(define-const var676 var923 var923-init) ; Statement: $r3 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var676)) ; Statement: specialinvoke $r3.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var676!1 var923)
(declare-const var709!4 var2127)
(assert (not (= var709!4 null-var2127)))
(assert (= (tclHashCaches/1117925919 var709!4) (cast-from-var923-to-var3427 var676!1))) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap tclHashCaches> = $r3 
(define-const var88 var923 var923-init) ; Statement: $r4 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var88)) ; Statement: specialinvoke $r4.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var88!1 var923)
(declare-const var709!5 var2127)
(assert (not (= var709!5 null-var2127)))
(assert (= (hashCache/1117925919 var709!5) (cast-from-var923-to-var3427 var88!1))) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap hashCache> = $r4 
(define-const var3656 var923 var923-init) ; Statement: $r5 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var3656)) ; Statement: specialinvoke $r5.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var3656!1 var923)
(declare-const var709!6 var2127)
(assert (not (= var709!6 null-var2127)))
(assert (= (mixInCache/1117925919 var709!6) (cast-from-var923-to-var3427 var3656!1))) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap mixInCache> = $r5 
(define-const var686 var2920 var2920-init) ; Statement: $r6 = new com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache 
(assert true)
;(assert (<init>/-1223797591 var686 1024)) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache: void <init>(int)>(1024) 

(declare-const var686!1 var2920)
(declare-const var2261 Int)
(declare-const var709!7 var2127)
(assert (not (= var709!7 null-var2127)))
(assert (= (autoTypeList/1117925919 var709!7) var686!1)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache autoTypeList> = $r6 
(define-const var1646 var923 var923-init) ; Statement: $r7 = new java.util.concurrent.ConcurrentHashMap 
(assert true)
;(assert (<init>/-2175807 var1646)) ; Statement: specialinvoke $r7.<java.util.concurrent.ConcurrentHashMap: void <init>()>() 

(declare-const var1646!1 var923)
(declare-const var709!8 var2127)
(assert (not (= var709!8 null-var2127)))
(assert (= (typeConverts/1117925919 var709!8) (cast-from-var923-to-var3427 var1646!1))) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap typeConverts> = $r7 
(define-const var3293 var3725 var3725-init) ; Statement: $r8 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3293)) ; Statement: specialinvoke $r8.<java.util.ArrayList: void <init>()>() 

(declare-const var3293!1 var3725)
(declare-const var709!9 var2127)
(assert (not (= var709!9 null-var2127)))
(assert (= (modules/1117925919 var709!9) (cast-from-var3725-to-var1585 var3293!1))) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.List modules> = $r8 
(define-const var891 var1810 var2127-DEFAULT_AUTO_TYPE_BEFORE_HANDLER) ; Statement: $r9 = <com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.JSONReader$AutoTypeBeforeHandler DEFAULT_AUTO_TYPE_BEFORE_HANDLER> 
(declare-const var709!10 var2127)
(assert (not (= var709!10 null-var2127)))
(assert (= (autoTypeBeforeHandler/1117925919 var709!10) var891)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.JSONReader$AutoTypeBeforeHandler autoTypeBeforeHandler> = $r9 
(define-const var2311 var3275 var2127-DEFAULT_AUTO_TYPE_HANDLER) ; Statement: $r10 = <com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Consumer DEFAULT_AUTO_TYPE_HANDLER> 
(declare-const var709!11 var2127)
(assert (not (= var709!11 null-var2127)))
(assert (= (autoTypeHandler/1117925919 var709!11) var2311)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Consumer autoTypeHandler> = $r10 
(define-const var813 (Array Int String) var2127-AUTO_TYPE_ACCEPT_LIST) ; Statement: $r11 = <com.alibaba.fastjson2.reader.ObjectReaderProvider: java.lang.String[] AUTO_TYPE_ACCEPT_LIST> 
 ; Statement: if $r11 != null goto $r12 = <com.alibaba.fastjson2.reader.ObjectReaderProvider: java.lang.String[] AUTO_TYPE_ACCEPT_LIST> 
(assert (not (not (= var813 null-__Array__Int__String__)))) ; Negate: Cond: $r11 != null  
(define-const var2474 (Array Int Int) arr-Int-init) ; Statement: r28 = newarray (long)[1] 
 ; Statement: goto [?= $i3 = lengthof r28] 
(assert true) ; Non Conditional
(define-const var1484 Int (getLength-Arr-Int-1 var2474)) ; Statement: $i3 = lengthof r28 
(define-const var9 Int (- var1484 1)) ; Statement: $i4 = $i3 - 1 
(declare-const var2474!1 (Array Int Int))
(assert (not (= var2474!1 null-__Array__Int__Int__)))
(assert (= (select var2474!1 var9) (- 6293031534589903644))) ; Statement: r28[$i4] = -6293031534589903644L 
;(assert (var3361_sort/1847598381 var2474!1)) ; Statement: staticinvoke <java.util.Arrays: void sort(long[])>(r28) 

(declare-const var2474!2 (Array Int Int))
(declare-const var709!12 var2127)
(assert (not (= var709!12 null-var2127)))
(assert (= (acceptHashCodes/1117925919 var709!12) var2474!2)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: long[] acceptHashCodes> = r28 
(define-const var279 var3427 (hashCache/1117925919 var709!12)) ; Statement: $r14 = r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap hashCache> 
(define-const var653 Int var2555-TYPE_HASH_CODE) ; Statement: $l5 = <com.alibaba.fastjson2.reader.ObjectArrayReader: long TYPE_HASH_CODE> 
(define-const var3825 Int (Int_valueOf/-1102777585 var653)) ; Statement: $r16 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l5) 
(define-const var3801 var2555 var2555-INSTANCE) ; Statement: $r15 = <com.alibaba.fastjson2.reader.ObjectArrayReader: com.alibaba.fastjson2.reader.ObjectArrayReader INSTANCE> 
;(assert (var1724_put/1464166817 (cast-from-var3427-to-var1724 var279) (cast-from-Int-to-var2120 var3825) (cast-from-var2555-to-var2120 var3801))) ; Statement: interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r16, $r15) 

(declare-const var279!1 var3427)
(declare-const var3825!1 Int)
(declare-const var3801!1 var2555)
(define-const var2651 var3427 (hashCache/1117925919 var709!12)) ; Statement: $r17 = r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap hashCache> 
(define-const var2461 Int (Int_valueOf/-1102777585 (- 4834614249632438472))) ; Statement: $r19 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(-4834614249632438472L) 
(define-const var3658 var1562 var1562-INSTANCE) ; Statement: $r18 = <com.alibaba.fastjson2.reader.ObjectReaderImplString: com.alibaba.fastjson2.reader.ObjectReaderImplString INSTANCE> 
;(assert (var1724_put/1464166817 (cast-from-var3427-to-var1724 var2651) (cast-from-Int-to-var2120 var2461) (cast-from-var1562-to-var2120 var3658))) ; Statement: interfaceinvoke $r17.<java.util.concurrent.ConcurrentMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r19, $r18) 

(declare-const var2651!1 var3427)
(declare-const var2461!1 Int)
(declare-const var3658!1 var1562)
(define-const var1248 var3427 (hashCache/1117925919 var709!12)) ; Statement: $r20 = r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap hashCache> 
(define-const var542 String (var181_getTypeName/1260098013 var2608!class)) ; Statement: $r21 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(class "Ljava/util/HashMap;") 
(define-const var235 Int (var2639_hashCode64/-647279352 var542)) ; Statement: $l6 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r21) 
(define-const var3192 Int (Int_valueOf/-1102777585 var235)) ; Statement: $r23 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6) 
(define-const var302 var2241 var2241-INSTANCE) ; Statement: $r22 = <com.alibaba.fastjson2.reader.ObjectReaderImplMap: com.alibaba.fastjson2.reader.ObjectReaderImplMap INSTANCE> 
;(assert (var1724_put/1464166817 (cast-from-var3427-to-var1724 var1248) (cast-from-Int-to-var2120 var3192) (cast-from-var2241-to-var2120 var302))) ; Statement: interfaceinvoke $r20.<java.util.concurrent.ConcurrentMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, $r22) 

(declare-const var1248!1 var3427)
(declare-const var3192!1 Int)
(declare-const var302!1 var2241)
(define-const var1493 var2175 null-var2175) ; Statement: r29 = null 
(define-const var760 String var1764-CREATOR) ; Statement: $r26 = <com.alibaba.fastjson2.JSONFactory: java.lang.String CREATOR> 
(define-const var1963 Int (- 1)) ; Statement: b10 = -1 
(assert true)
(define-const var1354 Int (hashCode/-467973558 var760)) ; Statement: $i7 = virtualinvoke $r26.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i7) {     case -1110092857: goto $z4 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>("lambda");     case 96891: goto $z3 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>("asm");     case 1085265597: goto $z0 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>("reflect");     default: goto tableswitch(b10) {     case 0: goto r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE>;     case 1: goto r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE>;     case 2: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>;     default: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>; }; } 
(assert (and (not (= var1354 1085265597)) (and (not (= var1354 96891)) (and (not (= var1354 (- 1110092857))) true)))) ; Intersect: Negate: Cond: $i7 == 1085265597   and Intersect: Negate: Cond: $i7 == 96891   and Intersect: Negate: Cond: $i7 == -1110092857   and Non Conditional   
 ; Statement: tableswitch(b10) {     case 0: goto r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE>;     case 1: goto r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE>;     case 2: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>;     default: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>; } 
(assert (and (= var1963 0) true)) ; Intersect: Cond: b10 == 0  and Non Conditional 
(define-const var1493!1 var2175 var2175-INSTANCE) ; Statement: r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE> 
 ; Statement: goto [?= r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReaderCreator creator> = r29] 
(assert true) ; Non Conditional
(declare-const var709!13 var2127)
(assert (not (= var709!13 null-var2127)))
(assert (= (creator/1117925919 var709!13) var1493!1)) ; Statement: r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReaderCreator creator> = r29 
(define-const var2823 var1585 (modules/1117925919 var709!13)) ; Statement: $r30 = r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.List modules> 
(define-const var767 var1012 var1012-init) ; Statement: $r31 = new com.alibaba.fastjson2.reader.ObjectReaderBaseModule 
(assert true)
;(assert (<init>/-1380079531 var767 var709!13)) ; Statement: specialinvoke $r31.<com.alibaba.fastjson2.reader.ObjectReaderBaseModule: void <init>(com.alibaba.fastjson2.reader.ObjectReaderProvider)>(r0) 

(declare-const var767!1 var1012)
(declare-const var709!14 var2127)
;(assert (var1585_add/328494887 var2823 (cast-from-var1012-to-var2120 var767!1))) ; Statement: interfaceinvoke $r30.<java.util.List: boolean add(java.lang.Object)>($r31) 

(declare-const var2823!1 var1585)
(declare-const var767!2 var1012)
(assert true)
;(assert (init/-16880630 var709!14)) ; Statement: virtualinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: void init()>() 

(declare-const var709!15 var2127)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2127-to-var2120=([com.alibaba.fastjson2.reader.ObjectReaderProvider], java.lang.Object), var923-init=([], java.util.concurrent.ConcurrentHashMap), <init>/-2175807=([java.util.concurrent.ConcurrentHashMap], void), cast-from-var923-to-var3427=([java.util.concurrent.ConcurrentHashMap], java.util.concurrent.ConcurrentMap), cache/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], java.util.concurrent.ConcurrentMap), cacheFieldBased/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], java.util.concurrent.ConcurrentMap), tclHashCaches/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], java.util.concurrent.ConcurrentMap), hashCache/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], java.util.concurrent.ConcurrentMap), mixInCache/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], java.util.concurrent.ConcurrentMap), var2920-init=([], com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache), <init>/-1223797591=([com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache, int], void), autoTypeList/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache), typeConverts/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], java.util.concurrent.ConcurrentMap), var3725-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3725-to-var1585=([java.util.ArrayList], java.util.List), modules/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], java.util.List), autoTypeBeforeHandler/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], com.alibaba.fastjson2.JSONReader$AutoTypeBeforeHandler), autoTypeHandler/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], java.util.function.Consumer), arr-Int-init=([], long[]), getLength-Arr-Int-1=([long[]], int), var3361_sort/1847598381=([long[]], void), acceptHashCodes/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], long[]), Int_valueOf/-1102777585=([long], java.lang.Long), var1724_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3427-to-var1724=([java.util.concurrent.ConcurrentMap], java.util.Map), cast-from-Int-to-var2120=([java.lang.Long], java.lang.Object), cast-from-var2555-to-var2120=([com.alibaba.fastjson2.reader.ObjectArrayReader], java.lang.Object), cast-from-var1562-to-var2120=([com.alibaba.fastjson2.reader.ObjectReaderImplString], java.lang.Object), var181_getTypeName/1260098013=([java.lang.Class], java.lang.String), var2639_hashCode64/-647279352=([java.lang.String], long), cast-from-var2241-to-var2120=([com.alibaba.fastjson2.reader.ObjectReaderImplMap], java.lang.Object), hashCode/-467973558=([java.lang.String], int), creator/1117925919=([com.alibaba.fastjson2.reader.ObjectReaderProvider], com.alibaba.fastjson2.reader.ObjectReaderCreator), var1012-init=([], com.alibaba.fastjson2.reader.ObjectReaderBaseModule), <init>/-1380079531=([com.alibaba.fastjson2.reader.ObjectReaderBaseModule, com.alibaba.fastjson2.reader.ObjectReaderProvider], void), var1585_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1012-to-var2120=([com.alibaba.fastjson2.reader.ObjectReaderBaseModule], java.lang.Object), init/-16880630=([com.alibaba.fastjson2.reader.ObjectReaderProvider], void)}
; {var2127=com.alibaba.fastjson2.reader.ObjectReaderProvider, var709=r0, var2120=java.lang.Object, var923=java.util.concurrent.ConcurrentHashMap, var413=$r1, var3427=java.util.concurrent.ConcurrentMap, var882=$r2, var676=$r3, var88=$r4, var3656=$r5, var2920=com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache, var686=$r6, var2261=1024, var1646=$r7, var3725=java.util.ArrayList, var3293=$r8, var1585=java.util.List, var1810=com.alibaba.fastjson2.JSONReader$AutoTypeBeforeHandler, var891=$r9, var3275=java.util.function.Consumer, var2311=$r10, var813=$r11, var2474=r28, var1484=$i3, var9=$i4, var3361=java.util.Arrays, var279=$r14, var2555=com.alibaba.fastjson2.reader.ObjectArrayReader, var653=$l5, var3825=$r16, var3801=$r15, var1724=java.util.Map, var2651=$r17, var2461=$r19, var1562=com.alibaba.fastjson2.reader.ObjectReaderImplString, var3658=$r18, var1248=$r20, var181=com.alibaba.fastjson2.util.TypeUtils, var2608=java.util.HashMap, var542=$r21, var2639=com.alibaba.fastjson2.util.Fnv, var235=$l6, var3192=$r23, var2241=com.alibaba.fastjson2.reader.ObjectReaderImplMap, var302=$r22, var2175=com.alibaba.fastjson2.reader.ObjectReaderCreator, var1493=r29, var1764=com.alibaba.fastjson2.JSONFactory, var760=$r26, var1963=b10, var1354=$i7, var2823=$r30, var1012=com.alibaba.fastjson2.reader.ObjectReaderBaseModule, var767=$r31}
; {com.alibaba.fastjson2.reader.ObjectReaderProvider=var2127, r0=var709, java.lang.Object=var2120, java.util.concurrent.ConcurrentHashMap=var923, $r1=var413, java.util.concurrent.ConcurrentMap=var3427, $r2=var882, $r3=var676, $r4=var88, $r5=var3656, com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache=var2920, $r6=var686, 1024=var2261, $r7=var1646, java.util.ArrayList=var3725, $r8=var3293, java.util.List=var1585, com.alibaba.fastjson2.JSONReader$AutoTypeBeforeHandler=var1810, $r9=var891, java.util.function.Consumer=var3275, $r10=var2311, $r11=var813, r28=var2474, $i3=var1484, $i4=var9, java.util.Arrays=var3361, $r14=var279, com.alibaba.fastjson2.reader.ObjectArrayReader=var2555, $l5=var653, $r16=var3825, $r15=var3801, java.util.Map=var1724, $r17=var2651, $r19=var2461, com.alibaba.fastjson2.reader.ObjectReaderImplString=var1562, $r18=var3658, $r20=var1248, com.alibaba.fastjson2.util.TypeUtils=var181, java.util.HashMap=var2608, $r21=var542, com.alibaba.fastjson2.util.Fnv=var2639, $l6=var235, $r23=var3192, com.alibaba.fastjson2.reader.ObjectReaderImplMap=var2241, $r22=var302, com.alibaba.fastjson2.reader.ObjectReaderCreator=var2175, r29=var1493, com.alibaba.fastjson2.JSONFactory=var1764, $r26=var760, b10=var1963, $i7=var1354, $r30=var2823, com.alibaba.fastjson2.reader.ObjectReaderBaseModule=var1012, $r31=var767}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderProvider;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r1.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap cache> = $r1;	$r2 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r2.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap cacheFieldBased> = $r2;	$r3 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r3.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap tclHashCaches> = $r3;	$r4 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r4.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap hashCache> = $r4;	$r5 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r5.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap mixInCache> = $r5;	$r6 = new com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache;	specialinvoke $r6.<com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache: void <init>(int)>(1024);	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReaderProvider$LRUAutoTypeCache autoTypeList> = $r6;	$r7 = new java.util.concurrent.ConcurrentHashMap;	specialinvoke $r7.<java.util.concurrent.ConcurrentHashMap: void <init>()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap typeConverts> = $r7;	$r8 = new java.util.ArrayList;	specialinvoke $r8.<java.util.ArrayList: void <init>()>();	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.List modules> = $r8;	$r9 = <com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.JSONReader$AutoTypeBeforeHandler DEFAULT_AUTO_TYPE_BEFORE_HANDLER>;	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.JSONReader$AutoTypeBeforeHandler autoTypeBeforeHandler> = $r9;	$r10 = <com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Consumer DEFAULT_AUTO_TYPE_HANDLER>;	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.function.Consumer autoTypeHandler> = $r10;	$r11 = <com.alibaba.fastjson2.reader.ObjectReaderProvider: java.lang.String[] AUTO_TYPE_ACCEPT_LIST>;	if $r11 != null goto $r12 = <com.alibaba.fastjson2.reader.ObjectReaderProvider: java.lang.String[] AUTO_TYPE_ACCEPT_LIST>;	r28 = newarray (long)[1];	goto [?= $i3 = lengthof r28];	$i3 = lengthof r28;	$i4 = $i3 - 1;	r28[$i4] = -6293031534589903644L;	staticinvoke <java.util.Arrays: void sort(long[])>(r28);	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: long[] acceptHashCodes> = r28;	$r14 = r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap hashCache>;	$l5 = <com.alibaba.fastjson2.reader.ObjectArrayReader: long TYPE_HASH_CODE>;	$r16 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l5);	$r15 = <com.alibaba.fastjson2.reader.ObjectArrayReader: com.alibaba.fastjson2.reader.ObjectArrayReader INSTANCE>;	interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r16, $r15);	$r17 = r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap hashCache>;	$r19 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(-4834614249632438472L);	$r18 = <com.alibaba.fastjson2.reader.ObjectReaderImplString: com.alibaba.fastjson2.reader.ObjectReaderImplString INSTANCE>;	interfaceinvoke $r17.<java.util.concurrent.ConcurrentMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r19, $r18);	$r20 = r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.concurrent.ConcurrentMap hashCache>;	$r21 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.String getTypeName(java.lang.Class)>(class "Ljava/util/HashMap;");	$l6 = staticinvoke <com.alibaba.fastjson2.util.Fnv: long hashCode64(java.lang.String)>($r21);	$r23 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6);	$r22 = <com.alibaba.fastjson2.reader.ObjectReaderImplMap: com.alibaba.fastjson2.reader.ObjectReaderImplMap INSTANCE>;	interfaceinvoke $r20.<java.util.concurrent.ConcurrentMap: java.lang.Object put(java.lang.Object,java.lang.Object)>($r23, $r22);	r29 = null;	$r26 = <com.alibaba.fastjson2.JSONFactory: java.lang.String CREATOR>;	b10 = -1;	$i7 = virtualinvoke $r26.<java.lang.String: int hashCode()>();	lookupswitch($i7) {     case -1110092857: goto $z4 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>("lambda");     case 96891: goto $z3 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>("asm");     case 1085265597: goto $z0 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>("reflect");     default: goto tableswitch(b10) {     case 0: goto r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE>;     case 1: goto r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE>;     case 2: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>;     default: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>; }; };	tableswitch(b10) {     case 0: goto r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE>;     case 1: goto r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE>;     case 2: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>;     default: goto $z1 = <com.alibaba.fastjson2.util.JDKUtils: boolean ANDROID>; };	r29 = <com.alibaba.fastjson2.reader.ObjectReaderCreator: com.alibaba.fastjson2.reader.ObjectReaderCreator INSTANCE>;	goto [?= r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReaderCreator creator> = r29];	r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReaderCreator creator> = r29;	$r30 = r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: java.util.List modules>;	$r31 = new com.alibaba.fastjson2.reader.ObjectReaderBaseModule;	specialinvoke $r31.<com.alibaba.fastjson2.reader.ObjectReaderBaseModule: void <init>(com.alibaba.fastjson2.reader.ObjectReaderProvider)>(r0);	interfaceinvoke $r30.<java.util.List: boolean add(java.lang.Object)>($r31);	virtualinvoke r0.<com.alibaba.fastjson2.reader.ObjectReaderProvider: void init()>();	return
;block_num 6