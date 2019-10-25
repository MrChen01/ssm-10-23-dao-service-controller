package com.wyu.pojo;

import java.util.ArrayList;
import java.util.List;

public class StudentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StudentExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNull() {
            addCriterion("username is null");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNotNull() {
            addCriterion("username is not null");
            return (Criteria) this;
        }

        public Criteria andUsernameEqualTo(String value) {
            addCriterion("username =", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotEqualTo(String value) {
            addCriterion("username <>", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThan(String value) {
            addCriterion("username >", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("username >=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThan(String value) {
            addCriterion("username <", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThanOrEqualTo(String value) {
            addCriterion("username <=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLike(String value) {
            addCriterion("username like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotLike(String value) {
            addCriterion("username not like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameIn(List<String> values) {
            addCriterion("username in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotIn(List<String> values) {
            addCriterion("username not in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameBetween(String value1, String value2) {
            addCriterion("username between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotBetween(String value1, String value2) {
            addCriterion("username not between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNull() {
            addCriterion("phone is null");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNotNull() {
            addCriterion("phone is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneEqualTo(String value) {
            addCriterion("phone =", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotEqualTo(String value) {
            addCriterion("phone <>", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThan(String value) {
            addCriterion("phone >", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("phone >=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThan(String value) {
            addCriterion("phone <", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThanOrEqualTo(String value) {
            addCriterion("phone <=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLike(String value) {
            addCriterion("phone like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotLike(String value) {
            addCriterion("phone not like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneIn(List<String> values) {
            addCriterion("phone in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotIn(List<String> values) {
            addCriterion("phone not in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneBetween(String value1, String value2) {
            addCriterion("phone between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotBetween(String value1, String value2) {
            addCriterion("phone not between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andChineseIsNull() {
            addCriterion("chinese is null");
            return (Criteria) this;
        }

        public Criteria andChineseIsNotNull() {
            addCriterion("chinese is not null");
            return (Criteria) this;
        }

        public Criteria andChineseEqualTo(Integer value) {
            addCriterion("chinese =", value, "chinese");
            return (Criteria) this;
        }

        public Criteria andChineseNotEqualTo(Integer value) {
            addCriterion("chinese <>", value, "chinese");
            return (Criteria) this;
        }

        public Criteria andChineseGreaterThan(Integer value) {
            addCriterion("chinese >", value, "chinese");
            return (Criteria) this;
        }

        public Criteria andChineseGreaterThanOrEqualTo(Integer value) {
            addCriterion("chinese >=", value, "chinese");
            return (Criteria) this;
        }

        public Criteria andChineseLessThan(Integer value) {
            addCriterion("chinese <", value, "chinese");
            return (Criteria) this;
        }

        public Criteria andChineseLessThanOrEqualTo(Integer value) {
            addCriterion("chinese <=", value, "chinese");
            return (Criteria) this;
        }

        public Criteria andChineseIn(List<Integer> values) {
            addCriterion("chinese in", values, "chinese");
            return (Criteria) this;
        }

        public Criteria andChineseNotIn(List<Integer> values) {
            addCriterion("chinese not in", values, "chinese");
            return (Criteria) this;
        }

        public Criteria andChineseBetween(Integer value1, Integer value2) {
            addCriterion("chinese between", value1, value2, "chinese");
            return (Criteria) this;
        }

        public Criteria andChineseNotBetween(Integer value1, Integer value2) {
            addCriterion("chinese not between", value1, value2, "chinese");
            return (Criteria) this;
        }

        public Criteria andEnglishIsNull() {
            addCriterion("english is null");
            return (Criteria) this;
        }

        public Criteria andEnglishIsNotNull() {
            addCriterion("english is not null");
            return (Criteria) this;
        }

        public Criteria andEnglishEqualTo(Integer value) {
            addCriterion("english =", value, "english");
            return (Criteria) this;
        }

        public Criteria andEnglishNotEqualTo(Integer value) {
            addCriterion("english <>", value, "english");
            return (Criteria) this;
        }

        public Criteria andEnglishGreaterThan(Integer value) {
            addCriterion("english >", value, "english");
            return (Criteria) this;
        }

        public Criteria andEnglishGreaterThanOrEqualTo(Integer value) {
            addCriterion("english >=", value, "english");
            return (Criteria) this;
        }

        public Criteria andEnglishLessThan(Integer value) {
            addCriterion("english <", value, "english");
            return (Criteria) this;
        }

        public Criteria andEnglishLessThanOrEqualTo(Integer value) {
            addCriterion("english <=", value, "english");
            return (Criteria) this;
        }

        public Criteria andEnglishIn(List<Integer> values) {
            addCriterion("english in", values, "english");
            return (Criteria) this;
        }

        public Criteria andEnglishNotIn(List<Integer> values) {
            addCriterion("english not in", values, "english");
            return (Criteria) this;
        }

        public Criteria andEnglishBetween(Integer value1, Integer value2) {
            addCriterion("english between", value1, value2, "english");
            return (Criteria) this;
        }

        public Criteria andEnglishNotBetween(Integer value1, Integer value2) {
            addCriterion("english not between", value1, value2, "english");
            return (Criteria) this;
        }

        public Criteria andMathIsNull() {
            addCriterion("math is null");
            return (Criteria) this;
        }

        public Criteria andMathIsNotNull() {
            addCriterion("math is not null");
            return (Criteria) this;
        }

        public Criteria andMathEqualTo(Integer value) {
            addCriterion("math =", value, "math");
            return (Criteria) this;
        }

        public Criteria andMathNotEqualTo(Integer value) {
            addCriterion("math <>", value, "math");
            return (Criteria) this;
        }

        public Criteria andMathGreaterThan(Integer value) {
            addCriterion("math >", value, "math");
            return (Criteria) this;
        }

        public Criteria andMathGreaterThanOrEqualTo(Integer value) {
            addCriterion("math >=", value, "math");
            return (Criteria) this;
        }

        public Criteria andMathLessThan(Integer value) {
            addCriterion("math <", value, "math");
            return (Criteria) this;
        }

        public Criteria andMathLessThanOrEqualTo(Integer value) {
            addCriterion("math <=", value, "math");
            return (Criteria) this;
        }

        public Criteria andMathIn(List<Integer> values) {
            addCriterion("math in", values, "math");
            return (Criteria) this;
        }

        public Criteria andMathNotIn(List<Integer> values) {
            addCriterion("math not in", values, "math");
            return (Criteria) this;
        }

        public Criteria andMathBetween(Integer value1, Integer value2) {
            addCriterion("math between", value1, value2, "math");
            return (Criteria) this;
        }

        public Criteria andMathNotBetween(Integer value1, Integer value2) {
            addCriterion("math not between", value1, value2, "math");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}