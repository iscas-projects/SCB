(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1495 0)
(declare-sort var3284 0)
(declare-sort var3530 0)
(declare-sort var3666 0)
(declare-sort var1285 0)
(declare-sort var3890 0)
(declare-sort var19 0)
(declare-sort var1613 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3666) void)
(declare-fun cast-from-var1495-to-var3666 (var1495) var3666)
(declare-fun start/-526965311 (var3530) Int)
(declare-fun end/8760360 (var3530) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun matchedInputPart/1550028859 (var1495) String)
(declare-fun groupCount/-1794770617 (var3530) Int)
(declare-fun var1285-init () var1285)
(declare-fun <init>/-120806475 (var1285 Int var1613) void)
(declare-fun cast-from-var3890-to-var1613 (var3890) var1613)
(declare-fun groupsSeq/1550028859 (var1495) var1285)
(declare-const null-var1495 var1495)
(declare-const null-String String)
(declare-const null-var3530 var3530)
(declare-const var19-SAFE_OBJECT_WRAPPER var3890)
(declare-const var2323 var1495) ; Statement: r0 := @this: freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups 
(assert (not (= var2323 null-var1495)))
(declare-const var292 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var292 null-String)))
(declare-const var1156 var3530) ; Statement: r2 := @parameter1: java.util.regex.Matcher 
(assert (not (= var1156 null-var3530)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1495-to-var3666 var2323))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2323!1 var1495)
(assert true)
(define-const var2377 Int (start/-526965311 var1156)) ; Statement: $i1 = virtualinvoke r2.<java.util.regex.Matcher: int start()>() 
(assert true)
(define-const var3927 Int (end/8760360 var1156)) ; Statement: $i0 = virtualinvoke r2.<java.util.regex.Matcher: int end()>() 
(assert (not (and true (and (>= var2377 0) (>= (str.len var292) var3927) (>= var3927 var2377)))))
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1495-to-var3666=([freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups], java.lang.Object), start/-526965311=([java.util.regex.Matcher], int), end/8760360=([java.util.regex.Matcher], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), matchedInputPart/1550028859=([freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups], java.lang.String), groupCount/-1794770617=([java.util.regex.Matcher], int), var1285-init=([], freemarker.template.SimpleSequence), <init>/-120806475=([freemarker.template.SimpleSequence, int, freemarker.template.ObjectWrapper], void), cast-from-var3890-to-var1613=([freemarker.template.SimpleObjectWrapper], freemarker.template.ObjectWrapper), groupsSeq/1550028859=([freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups], freemarker.template.SimpleSequence)}
; {var1495=freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups, var2323=r0, var292=r1, var3284=null_type, var3530=java.util.regex.Matcher, var1156=r2, var3666=java.lang.Object, var2377=$i1, var3927=$i0, var3314=$r3, var1281=$i2, var2030=i3, var1285=freemarker.template.SimpleSequence, var1978=$r4, var3890=freemarker.template.SimpleObjectWrapper, var19=freemarker.template._ObjectWrappers, var3468=$r5, var1613=freemarker.template.ObjectWrapper, var2292=i4}
; {freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups=var1495, r0=var2323, r1=var292, null_type=var3284, java.util.regex.Matcher=var3530, r2=var1156, java.lang.Object=var3666, $i1=var2377, $i0=var3927, $r3=var3314, $i2=var1281, i3=var2030, freemarker.template.SimpleSequence=var1285, $r4=var1978, freemarker.template.SimpleObjectWrapper=var3890, freemarker.template._ObjectWrappers=var19, $r5=var3468, freemarker.template.ObjectWrapper=var1613, i4=var2292}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.util.regex.Matcher;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i1 = virtualinvoke r2.<java.util.regex.Matcher: int start()>();	$i0 = virtualinvoke r2.<java.util.regex.Matcher: int end()>();	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i1, $i0);	r0.<freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups: java.lang.String matchedInputPart> = $r3;	$i2 = virtualinvoke r2.<java.util.regex.Matcher: int groupCount()>();	i3 = $i2 + 1;	$r4 = new freemarker.template.SimpleSequence;	$r5 = <freemarker.template._ObjectWrappers: freemarker.template.SimpleObjectWrapper SAFE_OBJECT_WRAPPER>;	specialinvoke $r4.<freemarker.template.SimpleSequence: void <init>(int,freemarker.template.ObjectWrapper)>(i3, $r5);	r0.<freemarker.core.BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups: freemarker.template.SimpleSequence groupsSeq> = $r4;	i4 = 0;	if i4 >= i3 goto return;	return
;block_num 3