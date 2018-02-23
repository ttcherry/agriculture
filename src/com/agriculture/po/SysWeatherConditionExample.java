package com.agriculture.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class SysWeatherConditionExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysWeatherConditionExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
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

        public Criteria andCropGpIdIsNull() {
            addCriterion("crop_gp_id is null");
            return (Criteria) this;
        }

        public Criteria andCropGpIdIsNotNull() {
            addCriterion("crop_gp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCropGpIdEqualTo(Integer value) {
            addCriterion("crop_gp_id =", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdNotEqualTo(Integer value) {
            addCriterion("crop_gp_id <>", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdGreaterThan(Integer value) {
            addCriterion("crop_gp_id >", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("crop_gp_id >=", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdLessThan(Integer value) {
            addCriterion("crop_gp_id <", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdLessThanOrEqualTo(Integer value) {
            addCriterion("crop_gp_id <=", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdIn(List<Integer> values) {
            addCriterion("crop_gp_id in", values, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdNotIn(List<Integer> values) {
            addCriterion("crop_gp_id not in", values, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdBetween(Integer value1, Integer value2) {
            addCriterion("crop_gp_id between", value1, value2, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdNotBetween(Integer value1, Integer value2) {
            addCriterion("crop_gp_id not between", value1, value2, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andFitConditionIsNull() {
            addCriterion("fit_condition is null");
            return (Criteria) this;
        }

        public Criteria andFitConditionIsNotNull() {
            addCriterion("fit_condition is not null");
            return (Criteria) this;
        }

        public Criteria andFitConditionEqualTo(String value) {
            addCriterion("fit_condition =", value, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionNotEqualTo(String value) {
            addCriterion("fit_condition <>", value, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionGreaterThan(String value) {
            addCriterion("fit_condition >", value, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionGreaterThanOrEqualTo(String value) {
            addCriterion("fit_condition >=", value, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionLessThan(String value) {
            addCriterion("fit_condition <", value, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionLessThanOrEqualTo(String value) {
            addCriterion("fit_condition <=", value, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionLike(String value) {
            addCriterion("fit_condition like", value, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionNotLike(String value) {
            addCriterion("fit_condition not like", value, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionIn(List<String> values) {
            addCriterion("fit_condition in", values, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionNotIn(List<String> values) {
            addCriterion("fit_condition not in", values, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionBetween(String value1, String value2) {
            addCriterion("fit_condition between", value1, value2, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andFitConditionNotBetween(String value1, String value2) {
            addCriterion("fit_condition not between", value1, value2, "fitCondition");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonIsNull() {
            addCriterion("less_fit_conditon is null");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonIsNotNull() {
            addCriterion("less_fit_conditon is not null");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonEqualTo(String value) {
            addCriterion("less_fit_conditon =", value, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonNotEqualTo(String value) {
            addCriterion("less_fit_conditon <>", value, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonGreaterThan(String value) {
            addCriterion("less_fit_conditon >", value, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonGreaterThanOrEqualTo(String value) {
            addCriterion("less_fit_conditon >=", value, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonLessThan(String value) {
            addCriterion("less_fit_conditon <", value, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonLessThanOrEqualTo(String value) {
            addCriterion("less_fit_conditon <=", value, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonLike(String value) {
            addCriterion("less_fit_conditon like", value, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonNotLike(String value) {
            addCriterion("less_fit_conditon not like", value, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonIn(List<String> values) {
            addCriterion("less_fit_conditon in", values, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonNotIn(List<String> values) {
            addCriterion("less_fit_conditon not in", values, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonBetween(String value1, String value2) {
            addCriterion("less_fit_conditon between", value1, value2, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andLessFitConditonNotBetween(String value1, String value2) {
            addCriterion("less_fit_conditon not between", value1, value2, "lessFitConditon");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionIsNull() {
            addCriterion("no_fit_condition is null");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionIsNotNull() {
            addCriterion("no_fit_condition is not null");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionEqualTo(String value) {
            addCriterion("no_fit_condition =", value, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionNotEqualTo(String value) {
            addCriterion("no_fit_condition <>", value, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionGreaterThan(String value) {
            addCriterion("no_fit_condition >", value, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionGreaterThanOrEqualTo(String value) {
            addCriterion("no_fit_condition >=", value, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionLessThan(String value) {
            addCriterion("no_fit_condition <", value, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionLessThanOrEqualTo(String value) {
            addCriterion("no_fit_condition <=", value, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionLike(String value) {
            addCriterion("no_fit_condition like", value, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionNotLike(String value) {
            addCriterion("no_fit_condition not like", value, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionIn(List<String> values) {
            addCriterion("no_fit_condition in", values, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionNotIn(List<String> values) {
            addCriterion("no_fit_condition not in", values, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionBetween(String value1, String value2) {
            addCriterion("no_fit_condition between", value1, value2, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andNoFitConditionNotBetween(String value1, String value2) {
            addCriterion("no_fit_condition not between", value1, value2, "noFitCondition");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterionForJDBCDate("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterionForJDBCDate("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterionForJDBCDate("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIsNull() {
            addCriterion("update_user is null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIsNotNull() {
            addCriterion("update_user is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserEqualTo(String value) {
            addCriterion("update_user =", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotEqualTo(String value) {
            addCriterion("update_user <>", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserGreaterThan(String value) {
            addCriterion("update_user >", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserGreaterThanOrEqualTo(String value) {
            addCriterion("update_user >=", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserLessThan(String value) {
            addCriterion("update_user <", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserLessThanOrEqualTo(String value) {
            addCriterion("update_user <=", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserLike(String value) {
            addCriterion("update_user like", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotLike(String value) {
            addCriterion("update_user not like", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIn(List<String> values) {
            addCriterion("update_user in", values, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotIn(List<String> values) {
            addCriterion("update_user not in", values, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserBetween(String value1, String value2) {
            addCriterion("update_user between", value1, value2, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotBetween(String value1, String value2) {
            addCriterion("update_user not between", value1, value2, "updateUser");
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