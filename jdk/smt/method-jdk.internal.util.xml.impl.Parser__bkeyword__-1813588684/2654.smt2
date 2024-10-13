(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun mBuff/-281370018 (var774) (Array Int Int))
(declare-fun mBuffIdx/-281370018 (var774) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var774 var774)
(declare-const var1541 var774) ; Statement: r1 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var1541 null-var774)))
(define-const var904 String String-init) ; Statement: $r21 = new java.lang.String 
(define-const var2645 (Array Int Int) (mBuff/-281370018 var1541)) ; Statement: $r2 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff> 
(define-const var3786 Int (mBuffIdx/-281370018 var1541)) ; Statement: $i0 = r1.<jdk.internal.util.xml.impl.Parser: int mBuffIdx> 
(assert true)
;(assert (<init>/-253222812 var904 var2645 1 var3786)) ; Statement: specialinvoke $r21.<java.lang.String: void <init>(char[],int,int)>($r2, 1, $i0) 

(declare-const var904!1 String)
(declare-const var2645!1 (Array Int Int))
(declare-const var172 Int)
(declare-const var3786!1 Int)
(assert true)
(define-const var363 Int (length/-134980193 var904!1)) ; Statement: $i1 = virtualinvoke $r21.<java.lang.String: int length()>() 
 ; Statement: tableswitch($i1) {     case 2: goto $r20 = "ID";     case 3: goto return 63;     case 4: goto return 63;     case 5: goto $r16 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;     case 6: goto $r13 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;     case 7: goto $r8 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;     case 8: goto $r3 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;     default: goto return 63; } 
(assert (and (not (= var363 2)) true)) ; Intersect: Negate: Cond: $i1 == 2   and Non Conditional 
 ; Statement: return 63 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), mBuff/-281370018=([jdk.internal.util.xml.impl.Parser], char[]), mBuffIdx/-281370018=([jdk.internal.util.xml.impl.Parser], int), <init>/-253222812=([java.lang.String, char[], int, int], void), length/-134980193=([java.lang.String], int)}
; {var774=jdk.internal.util.xml.impl.Parser, var1541=r1, var904=$r21, var2645=$r2, var3786=$i0, var172=1, var363=$i1}
; {jdk.internal.util.xml.impl.Parser=var774, r1=var1541, $r21=var904, $r2=var2645, $i0=var3786, 1=var172, $i1=var363}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @this: jdk.internal.util.xml.impl.Parser;	$r21 = new java.lang.String;	$r2 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;	$i0 = r1.<jdk.internal.util.xml.impl.Parser: int mBuffIdx>;	specialinvoke $r21.<java.lang.String: void <init>(char[],int,int)>($r2, 1, $i0);	$i1 = virtualinvoke $r21.<java.lang.String: int length()>();	tableswitch($i1) {     case 2: goto $r20 = "ID";     case 3: goto return 63;     case 4: goto return 63;     case 5: goto $r16 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;     case 6: goto $r13 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;     case 7: goto $r8 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;     case 8: goto $r3 = r1.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;     default: goto return 63; };	return 63
;block_num 2