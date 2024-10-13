(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1615 0)
(declare-sort var2410 0)
(declare-sort var3989 0)
(declare-sort var3758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-1835107176 (var2410) Int)
(declare-fun cast-from-var1615-to-var2410 (var1615) var2410)
(declare-fun reset/84691649 (var2410 Int) void)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun skip/-1145984187 (var2410 Int) void)
(declare-fun atEOF/1769913070 (var2410) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun source/-1000470490 (var1615) var3989)
(declare-fun scanIdentifier/1840091798 (var1615) Int)
(declare-fun getString/-1408706865 (var3989 Int Int) String)
(declare-fun var3758-init () var3758)
(declare-fun <init>/-1020902043 (var3758 String String) void)
(declare-const null-var1615 var1615)
(declare-const null-Int Int)
(declare-const var2044 var1615) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Lexer 
(assert (not (= var2044 null-var1615)))
(declare-const var2153 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2153 null-Int)))
(declare-const var1924 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1924 null-Int)))
(define-const var1736 Int (position/-1835107176 (cast-from-var1615-to-var2410 var2044))) ; Statement: i0 = r0.<jdk.nashorn.internal.parser.Lexer: int position> 
(assert true)
;(assert (reset/84691649 (cast-from-var1615-to-var2410 var2044) var2153)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i1) 

(declare-const var2044!1 var1615)
(declare-const var2153!1 Int)
(define-const var1668 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1668 var1924)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>(i2) 

(declare-const var1668!1 String)
(declare-const var1924!1 Int)
(assert true)
;(assert (skip/-1145984187 (cast-from-var1615-to-var2410 var2044!1) 1)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void skip(int)>(1) 

(declare-const var2044!2 var1615)
(declare-const var760 Int)
(define-const var2622 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2539 Bool (atEOF/1769913070 (cast-from-var1615-to-var2410 var2044!2))) ; Statement: $z2 = virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: boolean atEOF()>() 
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (= (ite var2539 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: if z1 == 0 goto r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2622 1 0) 0)) ; Cond: z1 == 0 
(assert true)
(define-const var1144 String (toString/-2075883882 var1668!1)) ; Statement: r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (skip/-1145984187 (cast-from-var1615-to-var2410 var2044!2) 1)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void skip(int)>(1) 

(declare-const var2044!3 var1615)
(declare-const var760!1 Int)
(define-const var426 var3989 (source/-1000470490 var2044!3)) ; Statement: $r3 = r0.<jdk.nashorn.internal.parser.Lexer: jdk.nashorn.internal.runtime.Source source> 
(define-const var519 Int (position/-1835107176 (cast-from-var1615-to-var2410 var2044!3))) ; Statement: $i3 = r0.<jdk.nashorn.internal.parser.Lexer: int position> 
(assert true)
(define-const var3869 Int (scanIdentifier/1840091798 var2044!3)) ; Statement: $i4 = specialinvoke r0.<jdk.nashorn.internal.parser.Lexer: int scanIdentifier()>() 
(assert true)
(define-const var556 String (getString/-1408706865 var426 var519 var3869)) ; Statement: r4 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.Source: java.lang.String getString(int,int)>($i3, $i4) 
(assert true)
;(assert (reset/84691649 (cast-from-var1615-to-var2410 var2044!3) var1736)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0) 

(declare-const var2044!4 var1615)
(declare-const var1736!1 Int)
(define-const var3902 var3758 var3758-init) ; Statement: $r7 = new jdk.nashorn.internal.parser.Lexer$RegexToken 
(assert true)
;(assert (<init>/-1020902043 var3902 var1144 var556)) ; Statement: specialinvoke $r7.<jdk.nashorn.internal.parser.Lexer$RegexToken: void <init>(java.lang.String,java.lang.String)>(r2, r4) 

(declare-const var3902!1 var3758)
(declare-const var1144!1 String)
(declare-const var556!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {position/-1835107176=([jdk.nashorn.internal.parser.Scanner], int), cast-from-var1615-to-var2410=([jdk.nashorn.internal.parser.Lexer], jdk.nashorn.internal.parser.Scanner), reset/84691649=([jdk.nashorn.internal.parser.Scanner, int], void), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), skip/-1145984187=([jdk.nashorn.internal.parser.Scanner, int], void), atEOF/1769913070=([jdk.nashorn.internal.parser.Scanner], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), source/-1000470490=([jdk.nashorn.internal.parser.Lexer], jdk.nashorn.internal.runtime.Source), scanIdentifier/1840091798=([jdk.nashorn.internal.parser.Lexer], int), getString/-1408706865=([jdk.nashorn.internal.runtime.Source, int, int], java.lang.String), var3758-init=([], jdk.nashorn.internal.parser.Lexer$RegexToken), <init>/-1020902043=([jdk.nashorn.internal.parser.Lexer$RegexToken, java.lang.String, java.lang.String], void)}
; {var1615=jdk.nashorn.internal.parser.Lexer, var2044=r0, var2153=i1, var1924=i2, var2410=jdk.nashorn.internal.parser.Scanner, var1736=i0, var1668=$r6, var760=1, var2622=z1, var2539=$z2, var1144=r2, var3989=jdk.nashorn.internal.runtime.Source, var426=$r3, var519=$i3, var3869=$i4, var556=r4, var3758=jdk.nashorn.internal.parser.Lexer$RegexToken, var3902=$r7}
; {jdk.nashorn.internal.parser.Lexer=var1615, r0=var2044, i1=var2153, i2=var1924, jdk.nashorn.internal.parser.Scanner=var2410, i0=var1736, $r6=var1668, 1=var760, z1=var2622, $z2=var2539, r2=var1144, jdk.nashorn.internal.runtime.Source=var3989, $r3=var426, $i3=var519, $i4=var3869, r4=var556, jdk.nashorn.internal.parser.Lexer$RegexToken=var3758, $r7=var3902}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.Lexer;	i1 := @parameter0: int;	i2 := @parameter1: int;	i0 = r0.<jdk.nashorn.internal.parser.Lexer: int position>;	virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i1);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>(i2);	virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void skip(int)>(1);	z1 = 0;	$z2 = virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: boolean atEOF()>();	if $z2 != 0 goto (branch);	if z1 == 0 goto r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void skip(int)>(1);	$r3 = r0.<jdk.nashorn.internal.parser.Lexer: jdk.nashorn.internal.runtime.Source source>;	$i3 = r0.<jdk.nashorn.internal.parser.Lexer: int position>;	$i4 = specialinvoke r0.<jdk.nashorn.internal.parser.Lexer: int scanIdentifier()>();	r4 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.Source: java.lang.String getString(int,int)>($i3, $i4);	virtualinvoke r0.<jdk.nashorn.internal.parser.Lexer: void reset(int)>(i0);	$r7 = new jdk.nashorn.internal.parser.Lexer$RegexToken;	specialinvoke $r7.<jdk.nashorn.internal.parser.Lexer$RegexToken: void <init>(java.lang.String,java.lang.String)>(r2, r4);	return $r7
;block_num 4