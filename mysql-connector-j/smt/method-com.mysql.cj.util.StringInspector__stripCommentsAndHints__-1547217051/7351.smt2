(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1493 0)
(declare-sort var2854 0)
(declare-sort var3244 0)
(declare-sort var1644 0)
(declare-sort var3669 0)
(declare-sort var2743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun restart/-2061183672 (var1493) void)
(declare-fun var3244_of/-383817871 (var1644 var1644 var1644) var3244)
(declare-fun cast-from-var2854-to-var1644 (var2854) var1644)
(declare-fun defaultSearchMode/963710472 (var1493) var3669)
(declare-fun var3669_contains/1636690605 (var3669 var2743) Bool)
(declare-fun cast-from-var2854-to-var2743 (var2854) var2743)
(declare-fun String-init () String)
(declare-fun source/963710472 (var1493) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun pos/963710472 (var1493) Int)
(declare-fun stopAt/963710472 (var1493) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1493 var1493)
(declare-const var2854-SKIP_BLOCK_COMMENTS var2854)
(declare-const var2854-SKIP_LINE_COMMENTS var2854)
(declare-const var2854-SKIP_HINT_BLOCKS var2854)
(declare-const var2854-ALLOW_BACKSLASH_ESCAPE var2854)
(declare-const var97 var1493) ; Statement: r0 := @this: com.mysql.cj.util.StringInspector 
(assert (not (= var97 null-var1493)))
(assert true)
;(assert (restart/-2061183672 var97)) ; Statement: virtualinvoke r0.<com.mysql.cj.util.StringInspector: void restart()>() 

(declare-const var97!1 var1493)
(define-const var2260 var2854 var2854-SKIP_BLOCK_COMMENTS) ; Statement: $r3 = <com.mysql.cj.util.SearchMode: com.mysql.cj.util.SearchMode SKIP_BLOCK_COMMENTS> 
(define-const var621 var2854 var2854-SKIP_LINE_COMMENTS) ; Statement: $r2 = <com.mysql.cj.util.SearchMode: com.mysql.cj.util.SearchMode SKIP_LINE_COMMENTS> 
(define-const var3798 var2854 var2854-SKIP_HINT_BLOCKS) ; Statement: $r1 = <com.mysql.cj.util.SearchMode: com.mysql.cj.util.SearchMode SKIP_HINT_BLOCKS> 
(define-const var654 var3244 (var3244_of/-383817871 (cast-from-var2854-to-var1644 var2260) (cast-from-var2854-to-var1644 var621) (cast-from-var2854-to-var1644 var3798))) ; Statement: r4 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum,java.lang.Enum,java.lang.Enum)>($r3, $r2, $r1) 
(define-const var3291 var3669 (defaultSearchMode/963710472 var97!1)) ; Statement: $r6 = r0.<com.mysql.cj.util.StringInspector: java.util.Set defaultSearchMode> 
(define-const var2110 var2854 var2854-ALLOW_BACKSLASH_ESCAPE) ; Statement: $r5 = <com.mysql.cj.util.SearchMode: com.mysql.cj.util.SearchMode ALLOW_BACKSLASH_ESCAPE> 
(define-const var894 Bool (var3669_contains/1636690605 var3291 (cast-from-var2854-to-var2743 var2110))) ; Statement: $z0 = interfaceinvoke $r6.<java.util.Set: boolean contains(java.lang.Object)>($r5) 
 ; Statement: if $z0 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var894 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3608 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(define-const var818 String (source/963710472 var97!1)) ; Statement: $r8 = r0.<com.mysql.cj.util.StringInspector: java.lang.String source> 
(assert true)
(define-const var606 Int (length/-134980193 var818)) ; Statement: $i0 = virtualinvoke $r8.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/543593434 var3608 var606)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var3608!1 String)
(declare-const var606!1 Int)
(assert true) ; Non Conditional
(define-const var1884 Int (pos/963710472 var97!1)) ; Statement: $i15 = r0.<com.mysql.cj.util.StringInspector: int pos> 
(define-const var1323 Int (stopAt/963710472 var97!1)) ; Statement: $i16 = r0.<com.mysql.cj.util.StringInspector: int stopAt> 
 ; Statement: if $i15 >= $i16 goto $r9 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1884 var1323)) ; Cond: $i15 >= $i16 
(assert true)
(define-const var93 String (toString/-2075883882 var3608!1)) ; Statement: $r9 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {restart/-2061183672=([com.mysql.cj.util.StringInspector], void), var3244_of/-383817871=([java.lang.Enum, java.lang.Enum, java.lang.Enum], java.util.EnumSet), cast-from-var2854-to-var1644=([com.mysql.cj.util.SearchMode], java.lang.Enum), defaultSearchMode/963710472=([com.mysql.cj.util.StringInspector], java.util.Set), var3669_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-var2854-to-var2743=([com.mysql.cj.util.SearchMode], java.lang.Object), String-init=([], java.lang.StringBuilder), source/963710472=([com.mysql.cj.util.StringInspector], java.lang.String), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), pos/963710472=([com.mysql.cj.util.StringInspector], int), stopAt/963710472=([com.mysql.cj.util.StringInspector], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1493=com.mysql.cj.util.StringInspector, var97=r0, var2854=com.mysql.cj.util.SearchMode, var2260=$r3, var621=$r2, var3798=$r1, var3244=java.util.EnumSet, var1644=java.lang.Enum, var654=r4, var3669=java.util.Set, var3291=$r6, var2110=$r5, var2743=java.lang.Object, var894=$z0, var3608=$r16, var818=$r8, var606=$i0, var1884=$i15, var1323=$i16, var93=$r9}
; {com.mysql.cj.util.StringInspector=var1493, r0=var97, com.mysql.cj.util.SearchMode=var2854, $r3=var2260, $r2=var621, $r1=var3798, java.util.EnumSet=var3244, java.lang.Enum=var1644, r4=var654, java.util.Set=var3669, $r6=var3291, $r5=var2110, java.lang.Object=var2743, $z0=var894, $r16=var3608, $r8=var818, $i0=var606, $i15=var1884, $i16=var1323, $r9=var93}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.util.StringInspector;	virtualinvoke r0.<com.mysql.cj.util.StringInspector: void restart()>();	$r3 = <com.mysql.cj.util.SearchMode: com.mysql.cj.util.SearchMode SKIP_BLOCK_COMMENTS>;	$r2 = <com.mysql.cj.util.SearchMode: com.mysql.cj.util.SearchMode SKIP_LINE_COMMENTS>;	$r1 = <com.mysql.cj.util.SearchMode: com.mysql.cj.util.SearchMode SKIP_HINT_BLOCKS>;	r4 = staticinvoke <java.util.EnumSet: java.util.EnumSet of(java.lang.Enum,java.lang.Enum,java.lang.Enum)>($r3, $r2, $r1);	$r6 = r0.<com.mysql.cj.util.StringInspector: java.util.Set defaultSearchMode>;	$r5 = <com.mysql.cj.util.SearchMode: com.mysql.cj.util.SearchMode ALLOW_BACKSLASH_ESCAPE>;	$z0 = interfaceinvoke $r6.<java.util.Set: boolean contains(java.lang.Object)>($r5);	if $z0 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	$r8 = r0.<com.mysql.cj.util.StringInspector: java.lang.String source>;	$i0 = virtualinvoke $r8.<java.lang.String: int length()>();	specialinvoke $r16.<java.lang.StringBuilder: void <init>(int)>($i0);	$i15 = r0.<com.mysql.cj.util.StringInspector: int pos>;	$i16 = r0.<com.mysql.cj.util.StringInspector: int stopAt>;	if $i15 >= $i16 goto $r9 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 4