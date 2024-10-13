(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1807 0)
(declare-sort var1847 0)
(declare-sort var3858 0)
(declare-sort var820 0)
(declare-sort var2874 0)
(declare-sort var2371 0)
(declare-sort var894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ieExplicits/-399732909 (var1807) var1847)
(declare-fun intersection/301651216 (var1847 var1847) var1847)
(declare-fun var3858_complexity/1867965366 (var1847) Int)
(declare-fun entrySet/-418312535 (var820) var2371)
(declare-fun iterator/-1001106692 (var2371) var894)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var894-to-Iterator (var894) Iterator)
(declare-fun var3858-init () var3858)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-682885522 (var3858 Bool var1847 String) void)
(declare-const null-var1807 var1807)
(declare-const null-var1847 var1847)
(declare-const null-Bool Bool)
(declare-const var2874-NAMED_CHAR_GROUPS var820)
(declare-const var479 var1807) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert (not (= var479 null-var1807)))
(declare-const var80 var1847) ; Statement: r18 := @parameter0: com.google.javascript.jscomp.regex.CharRanges 
(assert (not (= var80 null-var1847)))
(declare-const var996 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var996 null-Bool)))
(define-const var3960 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3960)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3960!1 String)
(assert (= var3960!1 ""))
(define-const var2500 var1847 (ieExplicits/-399732909 var479)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ieExplicits> 
(assert true)
(define-const var905 var1847 (intersection/301651216 var80 var2500)) ; Statement: r3 = virtualinvoke r18.<com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges intersection(com.google.javascript.jscomp.regex.CharRanges)>($r2) 
(assert true) ; Non Conditional
(define-const var2121 Int 0) ; Statement: c1 = 0 
(define-const var2407 var1847 null-var1847) ; Statement: r19 = null 
(define-const var588 Int (var3858_complexity/1867965366 var80)) ; Statement: i2 = staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: int complexity(com.google.javascript.jscomp.regex.CharRanges)>(r18) 
(define-const var138 var820 var2874-NAMED_CHAR_GROUPS) ; Statement: $r4 = <com.google.javascript.jscomp.regex.RegExpTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap NAMED_CHAR_GROUPS> 
(assert true)
(define-const var46 var2371 (entrySet/-418312535 var138)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet entrySet()>() 
(assert true)
(define-const var2426 var894 (iterator/-1001106692 var46)) ; Statement: $r9 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3166 Bool (Iterator_hasNext/-1669924200 (cast-from-var894-to-Iterator var2426))) ; Statement: $z2 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto (branch) 
(assert (= (ite var3166 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: if r19 == null goto $r6 = new com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset 
(assert (= var2407 null-var1847)) ; Cond: r19 == null 
(define-const var2717 var3858 var3858-init) ; Statement: $r6 = new com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset 
(assert true)
(define-const var3541 String (toString/-2075883882 var3960!1)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-682885522 var2717 var996 var80 var3541)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: void <init>(boolean,com.google.javascript.jscomp.regex.CharRanges,java.lang.String)>(z0, r18, $r7) 

(declare-const var2717!1 var3858)
(declare-const var996!1 Bool)
(declare-const var80!1 var1847)
(declare-const var3541!1 String)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ieExplicits/-399732909=([com.google.javascript.jscomp.regex.RegExpTree$Charset], com.google.javascript.jscomp.regex.CharRanges), intersection/301651216=([com.google.javascript.jscomp.regex.CharRanges, com.google.javascript.jscomp.regex.CharRanges], com.google.javascript.jscomp.regex.CharRanges), var3858_complexity/1867965366=([com.google.javascript.jscomp.regex.CharRanges], int), entrySet/-418312535=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), iterator/-1001106692=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var894-to-Iterator=([com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator], java.util.Iterator), var3858-init=([], com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-682885522=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset, boolean, com.google.javascript.jscomp.regex.CharRanges, java.lang.String], void)}
; {var1807=com.google.javascript.jscomp.regex.RegExpTree$Charset, var479=r1, var1847=com.google.javascript.jscomp.regex.CharRanges, var80=r18, var996=z0, var3960=$r0, var2500=$r2, var905=r3, var2121=c1, var2407=r19, var3858=com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset, var588=i2, var820=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2874=com.google.javascript.jscomp.regex.RegExpTree, var138=$r4, var2371=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var46=$r5, var894=com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator, var2426=$r9, var3166=$z2, var2717=$r6, var3541=$r7}
; {com.google.javascript.jscomp.regex.RegExpTree$Charset=var1807, r1=var479, com.google.javascript.jscomp.regex.CharRanges=var1847, r18=var80, z0=var996, $r0=var3960, $r2=var2500, r3=var905, c1=var2121, r19=var2407, com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset=var3858, i2=var588, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var820, com.google.javascript.jscomp.regex.RegExpTree=var2874, $r4=var138, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2371, $r5=var46, com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator=var894, $r9=var2426, $z2=var3166, $r6=var2717, $r7=var3541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Charset;	r18 := @parameter0: com.google.javascript.jscomp.regex.CharRanges;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ieExplicits>;	r3 = virtualinvoke r18.<com.google.javascript.jscomp.regex.CharRanges: com.google.javascript.jscomp.regex.CharRanges intersection(com.google.javascript.jscomp.regex.CharRanges)>($r2);	c1 = 0;	r19 = null;	i2 = staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: int complexity(com.google.javascript.jscomp.regex.CharRanges)>(r18);	$r4 = <com.google.javascript.jscomp.regex.RegExpTree: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap NAMED_CHAR_GROUPS>;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet entrySet()>();	$r9 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: com.google.javascript.jscomp.jarjar.com.google.common.collect.UnmodifiableIterator iterator()>();	$z2 = interfaceinvoke $r9.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto (branch);	if r19 == null goto $r6 = new com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset;	$r6 = new com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset;	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: void <init>(boolean,com.google.javascript.jscomp.regex.CharRanges,java.lang.String)>(z0, r18, $r7);	return $r6
;block_num 5