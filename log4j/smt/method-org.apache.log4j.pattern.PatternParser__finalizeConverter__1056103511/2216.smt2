(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1041 0)
(declare-sort var3302 0)
(declare-sort var2108 0)
(declare-sort var904 0)
(declare-sort var867 0)
(declare-sort var3354 0)
(declare-sort var1134 0)
(declare-sort var1152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun var867_extractConverter/-979896252 (Int String Int String String) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3354-init () var3354)
(declare-fun <init>/-325640736 (var3354) void)
(declare-fun var867_extractOptions/-2010060858 (String Int var904) Int)
(declare-fun cast-from-var3354-to-var904 (var3354) var904)
(declare-fun var867_createConverter/1205494696 (String String var2108 var2108 var904) var1134)
(declare-fun var904_add/328494887 (var904 var1152) Bool)
(declare-fun cast-from-var1134-to-var1152 (var1134) var1152)
(declare-fun cast-from-var3302-to-var1152 (var3302) var1152)
(declare-fun length/-1112840705 (String) Int)
(declare-fun setLength/163251007 (String Int) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var3302 var3302)
(declare-const null-var2108 var2108)
(declare-const null-var904 var904)
(declare-const null-var1134 var1134)
(declare-const var1938 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1938 null-Int)))
(declare-const var1534 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1534 null-String)))
(declare-const var2831 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2831 null-Int)))
(declare-const var3332 String) ; Statement: r2 := @parameter3: java.lang.StringBuffer 
(assert (not (= var3332 null-String)))
(declare-const var2333 var3302) ; Statement: r10 := @parameter4: org.apache.log4j.pattern.FormattingInfo 
(assert (not (= var2333 null-var3302)))
(declare-const var3691 var2108) ; Statement: r5 := @parameter5: java.util.Map 
(assert (not (= var3691 null-var2108)))
(declare-const var3546 var2108) ; Statement: r6 := @parameter6: java.util.Map 
(assert (not (= var3546 null-var2108)))
(declare-const var2449 var904) ; Statement: r8 := @parameter7: java.util.List 
(assert (not (= var2449 null-var904)))
(declare-const var2210 var904) ; Statement: r9 := @parameter8: java.util.List 
(assert (not (= var2210 null-var904)))
(define-const var2723 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2723)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2723!1 String)
(define-const var908 Int (var867_extractConverter/-979896252 var1938 var1534 var2831 var2723!1 var3332)) ; Statement: i4 = staticinvoke <org.apache.log4j.pattern.PatternParser: int extractConverter(char,java.lang.String,int,java.lang.StringBuffer,java.lang.StringBuffer)>(c0, r1, i3, $r0, r2) 
(assert true)
(define-const var3488 String (toString/-222306083 var2723!1)) ; Statement: r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var3710 var3354 var3354-init) ; Statement: $r4 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3710)) ; Statement: specialinvoke $r4.<java.util.ArrayList: void <init>()>() 

(declare-const var3710!1 var3354)
(define-const var2290 Int (var867_extractOptions/-2010060858 var1534 var908 (cast-from-var3354-to-var904 var3710!1))) ; Statement: i5 = staticinvoke <org.apache.log4j.pattern.PatternParser: int extractOptions(java.lang.String,int,java.util.List)>(r1, i4, $r4) 
(define-const var3965 var1134 (var867_createConverter/1205494696 var3488 var3332 var3691 var3546 (cast-from-var3354-to-var904 var3710!1))) ; Statement: r7 = staticinvoke <org.apache.log4j.pattern.PatternParser: org.apache.log4j.pattern.PatternConverter createConverter(java.lang.String,java.lang.StringBuffer,java.util.Map,java.util.Map,java.util.List)>(r3, r2, r5, r6, $r4) 
 ; Statement: if r7 != null goto interfaceinvoke r8.<java.util.List: boolean add(java.lang.Object)>(r7) 
(assert (not (= var3965 null-var1134))) ; Cond: r7 != null 
;(assert (var904_add/328494887 var2449 (cast-from-var1134-to-var1152 var3965))) ; Statement: interfaceinvoke r8.<java.util.List: boolean add(java.lang.Object)>(r7) 

(declare-const var2449!1 var904)
(declare-const var3965!1 var1134)
;(assert (var904_add/328494887 var2210 (cast-from-var3302-to-var1152 var2333))) ; Statement: interfaceinvoke r9.<java.util.List: boolean add(java.lang.Object)>(r10) 

(declare-const var2210!1 var904)
(declare-const var2333!1 var3302)
(assert true)
(define-const var3982 Int (length/-1112840705 var3332)) ; Statement: $i1 = virtualinvoke r2.<java.lang.StringBuffer: int length()>() 
 ; Statement: if $i1 <= 0 goto virtualinvoke r2.<java.lang.StringBuffer: void setLength(int)>(0) 
(assert (<= var3982 0)) ; Cond: $i1 <= 0 
(assert true)
;(assert (setLength/163251007 var3332 0)) ; Statement: virtualinvoke r2.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3332!1 String)
(declare-const var2983 Int)
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), var867_extractConverter/-979896252=([char, java.lang.String, int, java.lang.StringBuffer, java.lang.StringBuffer], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3354-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var867_extractOptions/-2010060858=([java.lang.String, int, java.util.List], int), cast-from-var3354-to-var904=([java.util.ArrayList], java.util.List), var867_createConverter/1205494696=([java.lang.String, java.lang.StringBuffer, java.util.Map, java.util.Map, java.util.List], org.apache.log4j.pattern.PatternConverter), var904_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1134-to-var1152=([org.apache.log4j.pattern.PatternConverter], java.lang.Object), cast-from-var3302-to-var1152=([org.apache.log4j.pattern.FormattingInfo], java.lang.Object), length/-1112840705=([java.lang.StringBuffer], int), setLength/163251007=([java.lang.StringBuffer, int], void)}
; {var1938=c0, var1534=r1, var1041=null_type, var2831=i3, var3332=r2, var3302=org.apache.log4j.pattern.FormattingInfo, var2333=r10, var2108=java.util.Map, var3691=r5, var3546=r6, var904=java.util.List, var2449=r8, var2210=r9, var2723=$r0, var867=org.apache.log4j.pattern.PatternParser, var908=i4, var3488=r3, var3354=java.util.ArrayList, var3710=$r4, var2290=i5, var1134=org.apache.log4j.pattern.PatternConverter, var3965=r7, var1152=java.lang.Object, var3982=$i1, var2983=0}
; {c0=var1938, r1=var1534, null_type=var1041, i3=var2831, r2=var3332, org.apache.log4j.pattern.FormattingInfo=var3302, r10=var2333, java.util.Map=var2108, r5=var3691, r6=var3546, java.util.List=var904, r8=var2449, r9=var2210, $r0=var2723, org.apache.log4j.pattern.PatternParser=var867, i4=var908, r3=var3488, java.util.ArrayList=var3354, $r4=var3710, i5=var2290, org.apache.log4j.pattern.PatternConverter=var1134, r7=var3965, java.lang.Object=var1152, $i1=var3982, 0=var2983}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: void setLength(int)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.StringBuffer: int length()>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1}
;stmts c0 := @parameter0: char;	r1 := @parameter1: java.lang.String;	i3 := @parameter2: int;	r2 := @parameter3: java.lang.StringBuffer;	r10 := @parameter4: org.apache.log4j.pattern.FormattingInfo;	r5 := @parameter5: java.util.Map;	r6 := @parameter6: java.util.Map;	r8 := @parameter7: java.util.List;	r9 := @parameter8: java.util.List;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	i4 = staticinvoke <org.apache.log4j.pattern.PatternParser: int extractConverter(char,java.lang.String,int,java.lang.StringBuffer,java.lang.StringBuffer)>(c0, r1, i3, $r0, r2);	r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r4 = new java.util.ArrayList;	specialinvoke $r4.<java.util.ArrayList: void <init>()>();	i5 = staticinvoke <org.apache.log4j.pattern.PatternParser: int extractOptions(java.lang.String,int,java.util.List)>(r1, i4, $r4);	r7 = staticinvoke <org.apache.log4j.pattern.PatternParser: org.apache.log4j.pattern.PatternConverter createConverter(java.lang.String,java.lang.StringBuffer,java.util.Map,java.util.Map,java.util.List)>(r3, r2, r5, r6, $r4);	if r7 != null goto interfaceinvoke r8.<java.util.List: boolean add(java.lang.Object)>(r7);	interfaceinvoke r8.<java.util.List: boolean add(java.lang.Object)>(r7);	interfaceinvoke r9.<java.util.List: boolean add(java.lang.Object)>(r10);	$i1 = virtualinvoke r2.<java.lang.StringBuffer: int length()>();	if $i1 <= 0 goto virtualinvoke r2.<java.lang.StringBuffer: void setLength(int)>(0);	virtualinvoke r2.<java.lang.StringBuffer: void setLength(int)>(0);	return i5
;block_num 3