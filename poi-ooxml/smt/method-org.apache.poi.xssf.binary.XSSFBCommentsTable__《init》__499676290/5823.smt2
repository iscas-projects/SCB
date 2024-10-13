(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var840 0)
(declare-sort var2717 0)
(declare-sort var3927 0)
(declare-sort var1401 0)
(declare-sort var1000 0)
(declare-sort var102 0)
(declare-sort var2411 0)
(declare-sort var525 0)
(declare-sort var2464 0)
(declare-sort var1670 0)
(declare-sort var280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/539341707 (var3927 var2717) void)
(declare-fun cast-from-var840-to-var3927 (var840) var3927)
(declare-fun var1401-init () var1401)
(declare-fun <init>/-168629465 (var1401) void)
(declare-fun cast-from-var1401-to-var1000 (var1401) var1000)
(declare-fun comments/-1444401907 (var840) var1000)
(declare-fun var102-init () var102)
(declare-fun <init>/1281898776 (var102) void)
(declare-fun cast-from-var102-to-var2411 (var102) var2411)
(declare-fun commentAddresses/-1444401907 (var840) var2411)
(declare-fun var525-init () var525)
(declare-fun <init>/-325640736 (var525) void)
(declare-fun cast-from-var525-to-var2464 (var525) var2464)
(declare-fun authors/-1444401907 (var840) var2464)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun authorId/-1444401907 (var840) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun authorBuffer/-1444401907 (var840) String)
(declare-fun parse/1360424584 (var3927) void)
(declare-fun var1000_keySet/-712633290 (var1000) var1670)
(declare-fun var280_addAll/-1672669757 (var280 var280) Bool)
(declare-fun cast-from-var2411-to-var280 (var2411) var280)
(declare-fun cast-from-var1670-to-var280 (var1670) var280)
(declare-const null-var840 var840)
(declare-const null-var2717 var2717)
(declare-const var427 var840) ; Statement: r0 := @this: org.apache.poi.xssf.binary.XSSFBCommentsTable 
(assert (not (= var427 null-var840)))
(declare-const var991 var2717) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var991 null-var2717)))
(assert true)
;(assert (<init>/539341707 (cast-from-var840-to-var3927 var427) var991)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBParser: void <init>(java.io.InputStream)>(r1) 

(declare-const var427!1 var840)
(declare-const var991!1 var2717)
(define-const var2107 var1401 var1401-init) ; Statement: $r9 = new java.util.TreeMap 
(assert true)
;(assert (<init>/-168629465 var2107)) ; Statement: specialinvoke $r9.<java.util.TreeMap: void <init>()>() 

(declare-const var2107!1 var1401)
(declare-const var427!2 var840)
(assert (not (= var427!2 null-var840)))
(assert (= (comments/-1444401907 var427!2) (cast-from-var1401-to-var1000 var2107!1))) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.Map comments> = $r9 
(define-const var1932 var102 var102-init) ; Statement: $r10 = new java.util.LinkedList 
(assert true)
;(assert (<init>/1281898776 var1932)) ; Statement: specialinvoke $r10.<java.util.LinkedList: void <init>()>() 

(declare-const var1932!1 var102)
(declare-const var427!3 var840)
(assert (not (= var427!3 null-var840)))
(assert (= (commentAddresses/-1444401907 var427!3) (cast-from-var102-to-var2411 var1932!1))) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.Queue commentAddresses> = $r10 
(define-const var2649 var525 var525-init) ; Statement: $r11 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2649)) ; Statement: specialinvoke $r11.<java.util.ArrayList: void <init>()>() 

(declare-const var2649!1 var525)
(declare-const var427!4 var840)
(assert (not (= var427!4 null-var840)))
(assert (= (authors/-1444401907 var427!4) (cast-from-var525-to-var2464 var2649!1))) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.List authors> = $r11 
(define-const var186 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(declare-const var427!5 var840)
(assert (not (= var427!5 null-var840)))
(assert (= (authorId/-1444401907 var427!5) var186)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: int authorId> = $i1 
(define-const var2445 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2445)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2445!1 String)
(assert (= var2445!1 ""))
(declare-const var427!6 var840)
(assert (not (= var427!6 null-var840)))
(assert (= (authorBuffer/-1444401907 var427!6) var2445!1)) ; Statement: r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.lang.StringBuilder authorBuffer> = $r12 
(assert true)
;(assert (parse/1360424584 (cast-from-var840-to-var3927 var427!6))) ; Statement: virtualinvoke r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: void parse()>() 

(declare-const var427!7 var840)
(define-const var1524 var2411 (commentAddresses/-1444401907 var427!7)) ; Statement: $r7 = r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.Queue commentAddresses> 
(define-const var1973 var1000 (comments/-1444401907 var427!7)) ; Statement: $r6 = r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.Map comments> 
(define-const var3205 var1670 (var1000_keySet/-712633290 var1973)) ; Statement: $r8 = interfaceinvoke $r6.<java.util.Map: java.util.Set keySet()>() 
;(assert (var280_addAll/-1672669757 (cast-from-var2411-to-var280 var1524) (cast-from-var1670-to-var280 var3205))) ; Statement: interfaceinvoke $r7.<java.util.Queue: boolean addAll(java.util.Collection)>($r8) 

(declare-const var1524!1 var2411)
(declare-const var3205!1 var1670)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/539341707=([org.apache.poi.xssf.binary.XSSFBParser, java.io.InputStream], void), cast-from-var840-to-var3927=([org.apache.poi.xssf.binary.XSSFBCommentsTable], org.apache.poi.xssf.binary.XSSFBParser), var1401-init=([], java.util.TreeMap), <init>/-168629465=([java.util.TreeMap], void), cast-from-var1401-to-var1000=([java.util.TreeMap], java.util.Map), comments/-1444401907=([org.apache.poi.xssf.binary.XSSFBCommentsTable], java.util.Map), var102-init=([], java.util.LinkedList), <init>/1281898776=([java.util.LinkedList], void), cast-from-var102-to-var2411=([java.util.LinkedList], java.util.Queue), commentAddresses/-1444401907=([org.apache.poi.xssf.binary.XSSFBCommentsTable], java.util.Queue), var525-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var525-to-var2464=([java.util.ArrayList], java.util.List), authors/-1444401907=([org.apache.poi.xssf.binary.XSSFBCommentsTable], java.util.List), cast-from-Int-to-Int=([int], int), authorId/-1444401907=([org.apache.poi.xssf.binary.XSSFBCommentsTable], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), authorBuffer/-1444401907=([org.apache.poi.xssf.binary.XSSFBCommentsTable], java.lang.StringBuilder), parse/1360424584=([org.apache.poi.xssf.binary.XSSFBParser], void), var1000_keySet/-712633290=([java.util.Map], java.util.Set), var280_addAll/-1672669757=([java.util.Collection, java.util.Collection], boolean), cast-from-var2411-to-var280=([java.util.Queue], java.util.Collection), cast-from-var1670-to-var280=([java.util.Set], java.util.Collection)}
; {var840=org.apache.poi.xssf.binary.XSSFBCommentsTable, var427=r0, var2717=java.io.InputStream, var991=r1, var3927=org.apache.poi.xssf.binary.XSSFBParser, var1401=java.util.TreeMap, var2107=$r9, var1000=java.util.Map, var102=java.util.LinkedList, var1932=$r10, var2411=java.util.Queue, var525=java.util.ArrayList, var2649=$r11, var2464=java.util.List, var186=$i1, var2445=$r12, var1524=$r7, var1973=$r6, var1670=java.util.Set, var3205=$r8, var280=java.util.Collection}
; {org.apache.poi.xssf.binary.XSSFBCommentsTable=var840, r0=var427, java.io.InputStream=var2717, r1=var991, org.apache.poi.xssf.binary.XSSFBParser=var3927, java.util.TreeMap=var1401, $r9=var2107, java.util.Map=var1000, java.util.LinkedList=var102, $r10=var1932, java.util.Queue=var2411, java.util.ArrayList=var525, $r11=var2649, java.util.List=var2464, $i1=var186, $r12=var2445, $r7=var1524, $r6=var1973, java.util.Set=var1670, $r8=var3205, java.util.Collection=var280}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.binary.XSSFBCommentsTable;	r1 := @parameter0: java.io.InputStream;	specialinvoke r0.<org.apache.poi.xssf.binary.XSSFBParser: void <init>(java.io.InputStream)>(r1);	$r9 = new java.util.TreeMap;	specialinvoke $r9.<java.util.TreeMap: void <init>()>();	r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.Map comments> = $r9;	$r10 = new java.util.LinkedList;	specialinvoke $r10.<java.util.LinkedList: void <init>()>();	r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.Queue commentAddresses> = $r10;	$r11 = new java.util.ArrayList;	specialinvoke $r11.<java.util.ArrayList: void <init>()>();	r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.List authors> = $r11;	$i1 = (int) -1;	r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: int authorId> = $i1;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.lang.StringBuilder authorBuffer> = $r12;	virtualinvoke r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: void parse()>();	$r7 = r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.Queue commentAddresses>;	$r6 = r0.<org.apache.poi.xssf.binary.XSSFBCommentsTable: java.util.Map comments>;	$r8 = interfaceinvoke $r6.<java.util.Map: java.util.Set keySet()>();	interfaceinvoke $r7.<java.util.Queue: boolean addAll(java.util.Collection)>($r8);	return
;block_num 1