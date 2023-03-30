{% macro genre_count_test() %}
    {% set expected_counts = [
        { 'genre': 'rock', 'total': 2 },
        { 'genre': 'pop', 'total': 3 },
        { 'genre': 'hip hop', 'total': 1 }
    ] %}

    {% set actual_counts = run_query("SELECT * FROM {{ ref('yt_model') }}") %}

    {% for expected, actual in zip(expected_counts, actual_counts) %}
        {% if expected.genre != actual.genre %}
            {{ raise_error("Expected genre to be " + expected.genre + " but got " + actual.genre) }}
        {% endif %}
        {% if expected.total != actual.total %}
            {{ raise_error("Expected total to be " + expected.total + " but got " + actual.total) }}
        {% endif %}
    {% endfor %}
{% endmacro %}

{{ genre_count_test() }}
